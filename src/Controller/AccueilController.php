<?php

namespace App\Controller;

use App\Entity\DetailsVoitures;
use App\Form\VoitureType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Validator\Validator\ValidatorInterface;

final class AccueilController extends AbstractController
{
   

    #[Route('/accueil', name: 'accueil')]
    public function index(): Response
    {

        return $this->render('accueil/index.html.twig');
    }

    #[Route('/ajouter', name: 'voiture_ajouter')]
    public function ajouterVoiture(Request $request, EntityManagerInterface $em, ValidatorInterface $validator): Response
    {
        $voiture = new DetailsVoitures();
        $voitureForm = $this->createForm(VoitureType::class, $voiture);
        $voitureForm->handleRequest($request);

        if ($voitureForm->isSubmitted() && $voitureForm->isValid()) {
            // Vérification supplémentaire des données avant de les persister
            $errors = $validator->validate($voiture);
            if (count($errors) > 0) {
                // Gérer les erreurs de validation
                $errorMessages = [];
                foreach ($errors as $error) {
                    $errorMessages[] = $error->getMessage();
                }
                // Retourner les erreurs à l'utilisateur
                return $this->render('voitures/ajouter_voiture.html.twig', [
                    "voitureForm" => $voitureForm->createView(),
                    "errorMessages" => $errorMessages,
                ]);
            }

            

            $em->persist($voiture);
            $em->flush();

            return $this->redirectToRoute('voitures_par_marques');
        }

        return $this->render('voitures/ajouter_voiture.html.twig', [
            "voitureForm" => $voitureForm,
        ]);
    }
}

