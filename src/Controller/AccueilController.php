<?php

namespace App\Controller;

use App\Entity\DetailsVoitures;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

use Doctrine\ORM\EntityManagerInterface;

final class AccueilController extends AbstractController
{
   

    #[Route('/accueil', name: 'accueil')]
    public function index(): Response
    {

        return $this->render('accueil/index.html.twig');
    }

    #[Route('/fakedata', name: 'fake')]
    public function fakeNew(EntityManagerInterface $em): void
    {
        // Création des données des voitures McLaren
        $mclarenData = [
            [
                'type' => 'Hypercar',
                'marque' => 'McLaren',
                'nom' => 'Solus GT',
                'image' => 'mclaren_solus_gt.jpg',
                'modele_3d' => '/models/mclaren_solus_gt.glb',
                'moteur' => 'V10 5.2L',
                'puissance' => 830,
                'couple' => 650,
                'acceleration_0_100' => 2.5,
                'vitesse_max' => 322,
                'poids' => 1400,
                'transmission' => 'Boîte séquentielle 7 rapports',
                'date_sortie' => '2023',
                'prix' => 3000000,
                'description' => "La McLaren Solus GT est une hypercar offrant des performances exceptionnelles et un design unique.",
                'autonomie' => 600,
                'carburant' => "Essence",
                'suspension' => "Suspension sportive",
            ]
        ];

        // Parcours du tableau pour créer chaque voiture et l'ajouter à la base de données
        foreach (array_merge($mclarenData) as $data) {
            $voiture = new DetailsVoitures();
            $voiture->setNom($data['nom']);
            $voiture->setType($data['type']);
            $voiture->setImage($data['image']);
            $voiture->setDescription($data['description']);
            $voiture->setMarque($data['marque']);
            $voiture->setModele3d($data['modele_3d']);
            $voiture->setMoteur($data['moteur']);
            $voiture->setPuissance($data['puissance']);
            $voiture->setCouple($data['couple']);
            $voiture->setAcceleration($data['acceleration_0_100']);
            $voiture->setVitesse($data['vitesse_max']);
            $voiture->setPoids($data['poids']);
            $voiture->setTransmission($data['transmission']);
            $voiture->setSortieAt($data['date_sortie']);
            $voiture->setPrix($data['prix']);
            $voiture->setAutonomie($data['autonomie']);
            $voiture->setCarburant($data['carburant']);
            $voiture->setSuspension($data['suspension']);

            // Persister chaque objet
            $em->persist($voiture);
        }

        // Sauvegarder les données en base
        $em->flush();
    }

}

