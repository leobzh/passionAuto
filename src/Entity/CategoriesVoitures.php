<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;

#[ORM\Entity]
class CategoriesVoitures
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $name = null;

    #[ORM\ManyToMany(targetEntity: DetailsVoitures::class, mappedBy: 'categories')]
    private Collection $voitures;

    public function __construct()
    {
        $this->voitures = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): static
    {
        $this->name = $name;

        return $this;
    }

    /**
     * @return Collection<int, DetailsVoitures>
     */
    public function getVoitures(): Collection
    {
        return $this->voitures;
    }

    public function addVoiture(DetailsVoitures $voiture): static
    {
        if (!$this->voitures->contains($voiture)) {
            $this->voitures->add($voiture);
            $voiture->addCategory($this);
        }

        return $this;
    }

    public function removeVoiture(DetailsVoitures $voiture): static
    {
        if ($this->voitures->removeElement($voiture)) {
            $voiture->removeCategory($this);
        }

        return $this;
    }
}
