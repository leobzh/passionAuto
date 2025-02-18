<?php

namespace App\Entity;

use App\Repository\DetailsVoituresRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

#[ORM\Entity(repositoryClass: DetailsVoituresRepository::class)]
class DetailsVoitures
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    #[Assert\NotBlank(message: "Le type de véhicule est obligatoire.")]
    #[Assert\Choice(choices: ['berline', 'SUV', 'coupé', 'break', 'pickup', 'sportive', 'électrique', 'hybride'], message: "Le type de véhicule doit être valide.")]
    private ?string $type = null;

    #[ORM\Column(length: 255)]
    #[Assert\NotBlank(message: "La marque du véhicule est obligatoire.")]
    #[Assert\Length(max: 100, maxMessage: "La marque ne doit pas dépasser {{ limit }} caractères.")]
    private ?string $marque = null;

    #[ORM\Column(length: 255)]
    #[Assert\NotBlank(message: "Le nom du modèle est obligatoire.")]
    #[Assert\Length(max: 100, maxMessage: "Le nom du modèle ne doit pas dépasser {{ limit }} caractères.")]
    private ?string $nom = null;

    #[ORM\Column(length: 255)]
    #[Assert\NotBlank(message: "L'URL de l'image est obligatoire.")]
    private ?string $image = null;

    #[ORM\Column(length: 255)]
    #[Assert\NotBlank(message: "Le moteur est obligatoire.")]
    #[Assert\Length(max: 100, maxMessage: "Le moteur ne doit pas dépasser {{ limit }} caractères.")]
    private ?string $moteur = null;

    #[ORM\Column]
    #[Assert\NotBlank(message: "La puissance est obligatoire.")]
    #[Assert\Positive(message: "La puissance doit être un nombre positif.")]
    #[Assert\Range(min: 50, max: 2000, notInRangeMessage: "La puissance doit être comprise entre {{ min }} et {{ max }} chevaux.")]
    private ?int $puissance = null;

    #[ORM\Column]
    #[Assert\NotBlank(message: "Le couple est obligatoire.")]
    #[Assert\Positive(message: "Le couple doit être un nombre positif.")]
    #[Assert\Range(min: 50, max: 2000, notInRangeMessage: "Le couple doit être compris entre {{ min }} et {{ max }} Nm.")]
    private ?int $couple = null;

    #[ORM\Column]
    #[Assert\NotBlank(message: "L'accélération est obligatoire.")]
    #[Assert\Positive(message: "L'accélération doit être un nombre positif.")]
    #[Assert\Range(min: 1, max: 20, notInRangeMessage: "L'accélération doit être comprise entre {{ min }} et {{ max }} secondes.")]
    private ?float $acceleration = null;

    #[ORM\Column]
    #[Assert\NotBlank(message: "La vitesse est obligatoire.")]
    #[Assert\Positive(message: "La vitesse doit être un nombre positif.")]
    #[Assert\Range(min: 50, max: 500, notInRangeMessage: "La vitesse doit être comprise entre {{ min }} et {{ max }} km/h.")]
    private ?int $vitesse = null;

    #[ORM\Column]
    #[Assert\NotBlank(message: "Le poids est obligatoire.")]
    #[Assert\Positive(message: "Le poids doit être un nombre positif.")]
    #[Assert\Range(min: 500, max: 5000, notInRangeMessage: "Le poids doit être compris entre {{ min }} et {{ max }} kg.")]
    private ?int $poids = null;

    #[ORM\Column(length: 255)]
    #[Assert\NotBlank(message: "La transmission est obligatoire.")]
    #[Assert\Choice(choices: ['manuelle', 'automatique', 'semi-automatique'], message: "La transmission doit être valide.")]
    private ?string $transmission = null;

    #[ORM\Column(length: 255)]
    #[Assert\NotBlank(message: "L'année est obligatoire.")]
    #[Assert\Regex(
        pattern: "/^\d{4}$/",
        message: "L'année doit être composée de 4 chiffres."
    )]
    private ?string $sortieAt = null;



    #[ORM\Column]
    #[Assert\NotBlank(message: "Le prix est obligatoire.")]
    #[Assert\Positive(message: "Le prix doit être un nombre positif.")]
    #[Assert\Range(min: 5000, max: 5000000, notInRangeMessage: "Le prix doit être compris entre {{ min }} et {{ max }} euros.")]
    private ?int $prix = null;

    #[ORM\Column(type: Types::TEXT)]
    #[Assert\NotBlank(message: "La description est obligatoire.")]
    #[Assert\Length(min: 20, max: 5000, minMessage: "La description doit contenir au moins {{ limit }} caractères.", maxMessage: "La description ne peut pas dépasser {{ limit }} caractères.")]
    private ?string $description = null;

    #[ORM\Column]
    #[Assert\NotBlank(message: "L'autonomie est obligatoire.")]
    #[Assert\Positive(message: "L'autonomie doit être un nombre positif.")]
    #[Assert\Range(min: 50, max: 2000, notInRangeMessage: "L'autonomie doit être comprise entre {{ min }} et {{ max }} km.")]
    private ?int $autonomie = null;

    #[ORM\Column(length: 255)]
    #[Assert\NotBlank(message: "Le type de carburant est obligatoire.")]
    #[Assert\Choice(choices: ['essence', 'diesel', 'électrique', 'hybride'], message: "Le type de carburant doit être valide.")]
    private ?string $carburant = null;

    #[ORM\Column(length: 255)]
    #[Assert\NotBlank(message: "La suspension est obligatoire.")]
    #[Assert\Length(max: 100, maxMessage: "Le type de suspension ne doit pas dépasser {{ limit }} caractères.")]
    private ?string $suspension = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getType(): ?string
    {
        return $this->type;
    }

    public function setType(string $type): static
    {
        $this->type = $type;

        return $this;
    }

    public function getMarque(): ?string
    {
        return $this->marque;
    }

    public function setMarque(string $marque): static
    {
        $this->marque = $marque;

        return $this;
    }

    public function getNom(): ?string
    {
        return $this->nom;
    }

    public function setNom(string $nom): static
    {
        $this->nom = $nom;

        return $this;
    }

    public function getImage(): ?string
    {
        return $this->image;
    }

    public function setImage(string $image): static
    {
        $this->image = $image;

        return $this;
    }

    public function getMoteur(): ?string
    {
        return $this->moteur;
    }

    public function setMoteur(string $moteur): static
    {
        $this->moteur = $moteur;

        return $this;
    }

    public function getPuissance(): ?int
    {
        return $this->puissance;
    }

    public function setPuissance(int $puissance): static
    {
        $this->puissance = $puissance;

        return $this;
    }

    public function getCouple(): ?int
    {
        return $this->couple;
    }

    public function setCouple(int $couple): static
    {
        $this->couple = $couple;

        return $this;
    }

    public function getAcceleration(): ?float
    {
        return $this->acceleration;
    }

    public function setAcceleration(float $acceleration): static
    {
        $this->acceleration = $acceleration;

        return $this;
    }

    public function getVitesse(): ?int
    {
        return $this->vitesse;
    }

    public function setVitesse(int $vitesse): static
    {
        $this->vitesse = $vitesse;

        return $this;
    }

    public function getPoids(): ?int
    {
        return $this->poids;
    }

    public function setPoids(int $poids): static
    {
        $this->poids = $poids;

        return $this;
    }

    public function getTransmission(): ?string
    {
        return $this->transmission;
    }

    public function setTransmission(string $transmission): static
    {
        $this->transmission = $transmission;

        return $this;
    }

    public function getSortieAt(): ?string
    {
        return $this->sortieAt;
    }

    public function setSortieAt(string $sortieAt): static
    {
        $this->sortieAt = $sortieAt;

        return $this;
    }

    public function getPrix(): ?int
    {
        return $this->prix;
    }

    public function setPrix(int $prix): static
    {
        $this->prix = $prix;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(string $description): static
    {
        $this->description = $description;

        return $this;
    }

    public function getAutonomie(): ?int
    {
        return $this->autonomie;
    }

    public function setAutonomie(int $autonomie): static
    {
        $this->autonomie = $autonomie;

        return $this;
    }

    public function getCarburant(): ?string
    {
        return $this->carburant;
    }

    public function setCarburant(string $carburant): static
    {
        $this->carburant = $carburant;

        return $this;
    }

    public function getSuspension(): ?string
    {
        return $this->suspension;
    }

    public function setSuspension(string $suspension): static
    {
        $this->suspension = $suspension;

        return $this;
    }
}
