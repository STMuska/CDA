<?php

namespace App\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ProfilController extends AbstractController
{

        #[IsGranted("ROLE_USER")]
        #[Route('/profile', name: 'app_profile')]
        public function index(): Response
        {
            dd($this->getUser());
            
            return $this->render('profile/index.html.twig', [
                'controller_name' => 'ProfileController',
            ]);
        }
    }
