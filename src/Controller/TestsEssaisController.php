<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

final class TestsEssaisController extends AbstractController
{
    #[Route('/tests_essais', name: 'tests_essais')]
    public function index(): Response
    {
        return $this->render('tests_essais/index.html.twig', [
            'controller_name' => 'TestsEssaisController',
        ]);
    }
}
