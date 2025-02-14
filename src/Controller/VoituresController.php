<?php

namespace App\Controller;

use App\Entity\DetailsVoitures;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Utils\TypesVoituresTrait;
use Doctrine\ORM\EntityManagerInterface;

final class VoituresController extends AbstractController
{

    #[Route('/marques', name: 'voitures_par_marques')]
    public function voituresParMarques(EntityManagerInterface $em): Response
    {
        $voitures = $em->getRepository(DetailsVoitures::class)->findAll();

        $marques = [];
        foreach ($voitures as $voiture) {
            $marques[] = $voiture->getMarque();  // Ajouter la marque à l'array
        }

        $marquesUniques = array_unique($marques);

        return $this->render('voitures/voitures_par_marques.html.twig', [
            'marques' => $marquesUniques
        ]);
    }

    #[Route('/marques/{marque}', name: 'voitures_par_marque')]
    public function voituresListe(EntityManagerInterface $em, string $marque): Response
    {
        // Récupérer toutes les voitures depuis la base de données
        $voitures = $em->getRepository(DetailsVoitures::class)->findAll();

        // Filtrer les voitures par la marque
        $voituresDeMarque = array_filter($voitures, function ($voiture) use ($marque) {
            return $voiture->getMarque() === $marque;  // Utiliser la méthode getMarque() sur l'objet
        });

        // Si aucune voiture n'est trouvée pour cette marque
        if (empty($voituresDeMarque)) {
            throw $this->createNotFoundException('Aucune voiture trouvée pour cette marque.');
        }

        // Retourner la vue avec les données
        return $this->render('voitures/voitures_liste.html.twig', [
            'marque' => $marque,
            'voitures' => $voituresDeMarque
        ]);
    }


    // src/Controller/VoitureDetailsController.php

    #[Route('/voitures/details/{nom}', name: 'voiture_details')]
    public function voitureDetails(EntityManagerInterface $em, string $nom): Response
    {
        // Récupérer toutes les voitures depuis la base de données
        $voitures = $em->getRepository(DetailsVoitures::class)->findAll();

        // Décoder le nom dans l'URL
        $nomDecoded = urldecode($nom);

        // Trouver la voiture par son nom
        $voiture = null;
        foreach ($voitures as $v) {
            // Utiliser les getters pour accéder aux propriétés de l'entité
            if (strtolower($v->getNom()) === strtolower($nomDecoded)) {
                $voiture = $v;
                break;
            }
        }

        // Si la voiture n'existe pas, on retourne une erreur 404
        if ($voiture === null) {
            throw $this->createNotFoundException('La voiture n\'existe pas.');
        }

        return $this->render('voitures/voiture_details.html.twig', [
            'voiture' => $voiture
        ]);
    }

}
