<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

final class DernieresNewsController extends AbstractController
{
    #[Route('/dernieres_news', name: 'dernieres_news')]
    public function index(): Response
    {
        return $this->render('dernieres_news/index.html.twig', [
            'controller_name' => 'DernieresNewsController',
        ]);
    }
}
