<?php

namespace App\Form;

use App\Entity\DetailsVoitures;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;

class VoitureType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('type', ChoiceType::class, [
                'choices' => [
                    'Berline' => 'berline',
                    'SUV' => 'SUV',
                    'Coupé' => 'coupé',
                    'Break' => 'break',
                    'Pickup' => 'pickup',
                    'Sportive' => 'sportive',
                    'Électrique' => 'électrique',
                    'Hybride' => 'hybride',
                ],
                'constraints' => [
                    new Assert\NotBlank(['message' => 'Le type de véhicule est obligatoire.'])
                ],
            ])
            ->add('marque', TextType::class, [
                'constraints' => [
                    new Assert\NotBlank(['message' => 'La marque est obligatoire.']),
                    new Assert\Length(['max' => 100, 'maxMessage' => 'La marque ne doit pas dépasser {{ limit }} caractères.'])
                ],
            ])
            ->add('nom', TextType::class, [
                'constraints' => [
                    new Assert\NotBlank(['message' => 'Le nom ne peut pas être vide.']),
                    new Assert\Length(['max' => 100, 'maxMessage' => 'Le nom ne doit pas dépasser {{ limit }} caractères.'])
                ],
            ])
            ->add('image', TextType::class, [
                'constraints' => [
                    new Assert\NotBlank(['message' => "L'URL de l'image est obligatoire."]),
                    new Assert\Url(['message' => "L'URL doit être valide."])
                ],
            ])
            ->add('modele3d', TextType::class, [
                'constraints' => [
                    new Assert\NotBlank(['message' => "L'URL du modèle 3D est obligatoire."]),
                    new Assert\Url(['message' => "L'URL doit être valide."])
                ],
            ])
            ->add('moteur', TextType::class, [
                'constraints' => [new Assert\NotBlank(['message' => 'Le moteur est obligatoire.'])],
            ])
            ->add('puissance', IntegerType::class, [
                'constraints' => [
                    new Assert\NotBlank(['message' => 'La puissance est obligatoire.']),
                    new Assert\Positive(['message' => 'La puissance doit être un nombre positif.'])
                ],
            ])
            ->add('couple', IntegerType::class, [
                'constraints' => [
                    new Assert\NotBlank(['message' => 'Le couple est obligatoire.']),
                    new Assert\PositiveOrZero(['message' => 'Le couple doit être positif ou nul.'])
                ],
            ])
            ->add('acceleration', NumberType::class, [
                'constraints' => [
                    new Assert\NotBlank(['message' => "L'accélération est obligatoire."]),
                    new Assert\Positive(['message' => "L'accélération doit être un nombre positif."])
                ],
            ])
            ->add('vitesse', IntegerType::class, [
                'constraints' => [
                    new Assert\NotBlank(['message' => 'La vitesse est obligatoire.']),
                    new Assert\Positive(['message' => 'La vitesse doit être un nombre positif.'])
                ],
            ])
            ->add('poids', IntegerType::class, [
                'constraints' => [
                    new Assert\NotBlank(['message' => 'Le poids est obligatoire.']),
                    new Assert\Positive(['message' => 'Le poids doit être un nombre positif.'])
                ],
            ])
            ->add('transmission', ChoiceType::class, [
                'choices' => [
                    'Manuelle' => 'manuelle',
                    'Automatique' => 'automatique',
                    'Semi-automatique' => 'semi-automatique',
                ],
                'constraints' => [new Assert\NotBlank(['message' => 'La transmission est obligatoire.'])],
            ])
            ->add('sortieAt', DateType::class, [
                'constraints' => [
                    new Assert\NotBlank(['message' => 'La date de sortie est obligatoire.']),
                    new Assert\Date(['message' => 'La date doit être valide.'])
                ],
            ])
            ->add('prix', IntegerType::class, [
                'constraints' => [
                    new Assert\NotBlank(['message' => 'Le prix est obligatoire.']),
                    new Assert\Positive(['message' => 'Le prix doit être un nombre positif.'])
                ],
            ])
            ->add('description', TextareaType::class, [
                'constraints' => [
                    new Assert\NotBlank(['message' => 'La description est obligatoire.']),
                    new Assert\Length([
                        'min' => 20,
                        'max' => 5000,
                        'minMessage' => 'La description doit contenir au moins {{ limit }} caractères.',
                        'maxMessage' => 'La description ne doit pas dépasser {{ limit }} caractères.'
                    ])
                ],
            ])
            ->add('autonomie', IntegerType::class, [
                'constraints' => [
                    new Assert\NotBlank(['message' => "L'autonomie est obligatoire."]),
                    new Assert\Positive(['message' => "L'autonomie doit être un nombre positif."])
                ],
            ])
            ->add('carburant', ChoiceType::class, [
                'choices' => [
                    'Essence' => 'essence',
                    'Diesel' => 'diesel',
                    'Électrique' => 'electrique',
                    'Hybride' => 'hybride',
                ],
                'constraints' => [new Assert\NotBlank(['message' => 'Le type de carburant est obligatoire.'])],
            ])
            ->add('suspension', TextType::class, [
                'constraints' => [new Assert\NotBlank(['message' => 'La suspension est obligatoire.'])],
            ]);
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => DetailsVoitures::class,
        ]);
    }
}
