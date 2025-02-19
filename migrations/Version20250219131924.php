<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20250219131924 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE details_voitures_categories_voitures (details_voitures_id INT NOT NULL, categories_voitures_id INT NOT NULL, INDEX IDX_13517476A7BE4CE0 (details_voitures_id), INDEX IDX_13517476C2BE606D (categories_voitures_id), PRIMARY KEY(details_voitures_id, categories_voitures_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE details_voitures_categories_voitures ADD CONSTRAINT FK_13517476A7BE4CE0 FOREIGN KEY (details_voitures_id) REFERENCES details_voitures (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE details_voitures_categories_voitures ADD CONSTRAINT FK_13517476C2BE606D FOREIGN KEY (categories_voitures_id) REFERENCES categories_voitures (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE categories_voitures CHANGE nom name VARCHAR(255) NOT NULL');
        $this->addSql('ALTER TABLE details_voitures DROP FOREIGN KEY fk_categorie');
        $this->addSql('DROP INDEX fk_categorie ON details_voitures');
        $this->addSql('ALTER TABLE details_voitures DROP categorie_id');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE details_voitures_categories_voitures DROP FOREIGN KEY FK_13517476A7BE4CE0');
        $this->addSql('ALTER TABLE details_voitures_categories_voitures DROP FOREIGN KEY FK_13517476C2BE606D');
        $this->addSql('DROP TABLE details_voitures_categories_voitures');
        $this->addSql('ALTER TABLE categories_voitures CHANGE name nom VARCHAR(255) NOT NULL');
        $this->addSql('ALTER TABLE details_voitures ADD categorie_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE details_voitures ADD CONSTRAINT fk_categorie FOREIGN KEY (categorie_id) REFERENCES categories_voitures (id) ON UPDATE NO ACTION ON DELETE SET NULL');
        $this->addSql('CREATE INDEX fk_categorie ON details_voitures (categorie_id)');
    }
}
