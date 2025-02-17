<?php

namespace App\Form;

use App\Entity\DetailsVoitures;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class VoitureType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('type')
            ->add('marque')
            ->add('nom')
            ->add('image')
            ->add('modele3d')
            ->add('moteur')
            ->add('puissance')
            ->add('couple')
            ->add('acceleration')
            ->add('vitesse')
            ->add('poids')
            ->add('transmission')
            ->add('sortieAt')
            ->add('prix')
            ->add('description')
            ->add('autonomie')
            ->add('carburant')
            ->add('suspension')
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => DetailsVoitures::class,
        ]);
    }
}
