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
        // Création des données des voitures Zenvo
        $zenvoData = [
            [
                'type' => 'Hypercar',
                'marque' => 'Zenvo',
                'nom' => 'ST1',
                'image' => 'zenvo_st1.jpg',
                'modele_3d' => '/models/zenvo_st1.glb',
                'moteur' => 'V8 7.0L biturbo',
                'puissance' => 1104,
                'couple' => 1430,
                'acceleration_0_100' => 2.6,
                'vitesse_max' => 375,
                'poids' => 1680,
                'transmission' => 'Boîte séquentielle 7 rapports',
                'date_sortie' => '2009',
                'prix' => 1200000,
                'description' => "La Zenvo ST1 est une hypercar offrant des performances exceptionnelles et un design unique.",
                'autonomie' => 600,
                'carburant' => "Essence",
                'suspension' => "Suspension sportive",
            ],
            [
                'type' => 'Hypercar',
                'marque' => 'Zenvo',
                'nom' => 'TS1 GT',
                'image' => 'zenvo_ts1_gt.jpg',
                'modele_3d' => '/models/zenvo_ts1_gt.glb',
                'moteur' => 'V8 5.8L biturbo',
                'puissance' => 1163,
                'couple' => 1100,
                'acceleration_0_100' => 2.8,
                'vitesse_max' => 375,
                'poids' => 1580,
                'transmission' => 'Boîte séquentielle 7 rapports',
                'date_sortie' => '2016',
                'prix' => 1500000,
                'description' => "La Zenvo TS1 GT est une version améliorée de la ST1, offrant des performances encore plus impressionnantes.",
                'autonomie' => 650,
                'carburant' => "Essence",
                'suspension' => "Suspension sportive",
            ],
            [
                'type' => 'Hypercar',
                'marque' => 'Zenvo',
                'nom' => 'TSR-S',
                'image' => 'zenvo_tsr_s.jpg',
                'modele_3d' => '/models/zenvo_tsr_s.glb',
                'moteur' => 'V8 5.8L biturbo',
                'puissance' => 1177,
                'couple' => 1100,
                'acceleration_0_100' => 2.8,
                'vitesse_max' => 325,
                'poids' => 1495,
                'transmission' => 'Boîte séquentielle 7 rapports',
                'date_sortie' => '2018',
                'prix' => 1600000,
                'description' => "La Zenvo TSR-S est une hypercar offrant des performances exceptionnelles et un design aérodynamique.",
                'autonomie' => 650,
                'carburant' => "Essence",
                'suspension' => "Suspension sportive",
            ],
            [
                'type' => 'Hypercar',
                'marque' => 'Zenvo',
                'nom' => 'Aurora',
                'image' => '/images/voitures/zenvo_aurora.jpg',
                'modele_3d' => '/models/zenvo_aurora.glb',
                'moteur' => 'V8 5.8L biturbo',
                'puissance' => 1250,
                'couple' => 1100,
                'acceleration_0_100' => 2.7,
                'vitesse_max' => 390,
                'poids' => 1500,
                'transmission' => 'Boîte séquentielle 7 rapports',
                'date_sortie' => '2023',
                'prix' => 2000000,
                'description' => "La Zenvo Aurora est la dernière hypercar de Zenvo, offrant des performances exceptionnelles et un design unique.",
                'autonomie' => 650,
                'carburant' => "Essence",
                'suspension' => "Suspension sportive",
            ],
            [
                'type' => 'Hypercar',
                'marque' => 'Zenvo',
                'nom' => 'Aurora Tur',
                'image' => 'zenvo_aurora_tur.jpg',
                'modele_3d' => '/models/zenvo_aurora.glb',
                'moteur' => 'V8 5.8L biturbo',
                'puissance' => 1250,
                'couple' => 1100,
                'acceleration_0_100' => 2.7,
                'vitesse_max' => 390,
                'poids' => 1500,
                'transmission' => 'Boîte séquentielle 7 rapports',
                'date_sortie' => '2023',
                'prix' => 2000000,
                'description' => "La Zenvo Aurora est la dernière hypercar de Zenvo, offrant des performances exceptionnelles et un design unique.",
                'autonomie' => 650,
                'carburant' => "Essence",
                'suspension' => "Suspension sportive",
            ]
        ];

        // Création des données des voitures De Tomaso
        $deTomasoData = [
            [
                'type' => 'Supercar',
                'marque' => 'De Tomaso',
                'nom' => 'Pantera',
                'image' => 'de_tomaso_pantera.jpg',
                'modele_3d' => '/models/de_tomaso_pantera.glb',
                'moteur' => 'V8 5.7L',
                'puissance' => 330,
                'couple' => 475,
                'acceleration_0_100' => 5.5,
                'vitesse_max' => 260,
                'poids' => 1300,
                'transmission' => 'Boîte manuelle 5 rapports',
                'date_sortie' => '1971',
                'prix' => 150000,
                'description' => "La De Tomaso Pantera est une supercar classique offrant des performances robustes et un design emblématique.",
                'autonomie' => 600,
                'carburant' => "Essence",
                'suspension' => "Suspension sportive",
            ],
            [
                'type' => 'Supercar',
                'marque' => 'De Tomaso',
                'nom' => 'Mangusta',
                'image' => 'de_tomaso_mangusta.jpg',
                'modele_3d' => '/models/de_tomaso_mangusta.glb',
                'moteur' => 'V8 4.6L',
                'puissance' => 305,
                'couple' => 400,
                'acceleration_0_100' => 5.0,
                'vitesse_max' => 250,
                'poids' => 1250,
                'transmission' => 'Boîte manuelle 5 rapports',
                'date_sortie' => '1967',
                'prix' => 120000,
                'description' => "La De Tomaso Mangusta est une supercar classique offrant des performances robustes et un design unique.",
                'autonomie' => 600,
                'carburant' => "Essence",
                'suspension' => "Suspension sportive",
            ],
            [
                'type' => 'Supercar',
                'marque' => 'De Tomaso',
                'nom' => 'Guarà',
                'image' => 'de_tomaso_guara.jpg',
                'modele_3d' => '/models/de_tomaso_guara.glb',
                'moteur' => 'V8 4.6L',
                'puissance' => 304,
                'couple' => 400,
                'acceleration_0_100' => 5.0,
                'vitesse_max' => 270,
                'poids' => 1200,
                'transmission' => 'Boîte manuelle 6 rapports',
                'date_sortie' => '1993',
                'prix' => 100000,
                'description' => "La De Tomaso Guarà est une supercar offrant des performances robustes et un design élégant.",
                'autonomie' => 600,
                'carburant' => "Essence",
                'suspension' => "Suspension sportive",
            ],
            [
                'type' => 'Supercar',
                'marque' => 'De Tomaso',
                'nom' => 'P72',
                'image' => 'de_tomaso_p72.jpg',
                'modele_3d' => '/models/de_tomaso_p72.glb',
                'moteur' => 'V8 5.0L',
                'puissance' => 700,
                'couple' => 850,
                'acceleration_0_100' => 2.9,
                'vitesse_max' => 340,
                'poids' => 1280,
                'transmission' => 'Boîte manuelle 6 rapports',
                'date_sortie' => '2019',
                'prix' => 850000,
                'description' => "La De Tomaso P72 est une supercar moderne offrant des performances exceptionnelles et un design unique.",
                'autonomie' => 600,
                'carburant' => "Essence",
                'suspension' => "Suspension sportive",
            ],
            [
                'type' => 'Supercar',
                'marque' => 'De Tomaso',
                'nom' => 'P900',
                'image' => 'de_tomaso_p900.jpg',
                'modele_3d' => '/models/de_tomaso_p900.glb',
                'moteur' => 'V8 6.3L',
                'puissance' => 630,
                'couple' => 664,
                'acceleration_0_100' => 3.3,
                'vitesse_max' => 330,
                'poids' => 1300,
                'transmission' => 'Boîte manuelle 6 rapports',
                'date_sortie' => '1999',
                'prix' => 350000,
                'description' => "La De Tomaso P900 est une supercar offrant des performances robustes et un design unique.",
                'autonomie' => 600,
                'carburant' => "Essence",
                'suspension' => "Suspension sportive",
            ]

        ];

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
            ],
            [
                'type' => 'Hypercar',
                'marque' => 'McLaren',
                'nom' => 'F1',
                'image' => 'mclaren_f1.jpg',
                'modele_3d' => '/models/mclaren_f1.glb',
                'moteur' => 'V12 6.1L',
                'puissance' => 627,
                'couple' => 651,
                'acceleration_0_100' => 3.2,
                'vitesse_max' => 391,
                'poids' => 1140,
                'transmission' => 'Boîte manuelle 6 rapports',
                'date_sortie' => '1992',
                'prix' => 1000000,
                'description' => "La McLaren F1 est une hypercar emblématique offrant des performances exceptionnelles et un design unique.",
                'autonomie' => 600,
                'carburant' => "Essence",
                'suspension' => "Suspension sportive",
            ],
            [
                'type' => 'Hypercar',
                'marque' => 'McLaren',
                'nom' => 'P1',
                'image' => 'mclaren_p1.jpg',
                'modele_3d' => '/models/mclaren_p1.glb',
                'moteur' => 'V8 3.8L biturbo hybride',
                'puissance' => 903,
                'couple' => 980,
                'acceleration_0_100' => 2.8,
                'vitesse_max' => 350,
                'poids' => 1490,
                'transmission' => 'Boîte séquentielle 7 rapports',
                'date_sortie' => '2013',
                'prix' => 1200000,
                'description' => "La McLaren P1 est une hypercar hybride offrant des performances exceptionnelles et une technologie avancée.",
                'autonomie' => 500,
                'carburant' => "Hybride",
                'suspension' => "Suspension sportive",
            ],
            [
                'type' => 'Supercar',
                'marque' => 'McLaren',
                'nom' => '720S',
                'image' => 'mclaren_720s.jpg',
                'modele_3d' => '/models/mclaren_720s.glb',
                'moteur' => 'V8 4.0L biturbo',
                'puissance' => 720,
                'couple' => 770,
                'acceleration_0_100' => 2.9,
                'vitesse_max' => 341,
                'poids' => 1419,
                'transmission' => 'Boîte séquentielle 7 rapports',
                'date_sortie' => '2017',
                'prix' => 280000,
                'description' => "La McLaren 720S est une supercar offrant des performances exceptionnelles et un design élégant.",
                'autonomie' => 650,
                'carburant' => "Essence",
                'suspension' => "Suspension sportive",
            ],
            [
                'type' => 'Supercar',
                'marque' => 'McLaren',
                'nom' => 'Senna',
                'image' => 'mclaren_senna.jpg',
                'modele_3d' => '/models/mclaren_senna.glb',
                'moteur' => 'V8 4.0L biturbo',
                'puissance' => 800,
                'couple' => 800,
                'acceleration_0_100' => 2.8,
                'vitesse_max' => 340,
                'poids' => 1309,
                'transmission' => 'Boîte séquentielle 7 rapports',
                'date_sortie' => '2018',
                'prix' => 1000000,
                'description' => "La McLaren Senna est une supercar offrant des performances exceptionnelles et un design unique.",
                'autonomie' => 600,
                'carburant' => "Essence",
                'suspension' => "Suspension sportive",
            ]
        ];

        // Parcours du tableau pour créer chaque voiture et l'ajouter à la base de données
        foreach (array_merge($zenvoData, $deTomasoData, $mclarenData) as $data) {
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

