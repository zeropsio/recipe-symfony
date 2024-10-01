<?php

declare(strict_types=1);

/*
 * This file is part of the Symfony package.
 *
 * (c) Fabien Potencier <fabien@symfony.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Initial migration with demo DB structure and data.
 */
final class Version20241001143816 extends AbstractMigration
{
    public function getDescription(): string
    {
        return 'Initial migration which also includes demo data';
    }

    public function up(Schema $schema): void
    {
        $this->connection->executeStatement(file_get_contents(__DIR__.'/Version20241001143816-user.sql'));
        $this->connection->executeStatement(file_get_contents(__DIR__.'/Version20241001143816-tag.sql'));
        $this->connection->executeStatement(file_get_contents(__DIR__.'/Version20241001143816-post.sql'));
        $this->connection->executeStatement(file_get_contents(__DIR__.'/Version20241001143816-post_tag.sql'));
        $this->connection->executeStatement(file_get_contents(__DIR__.'/Version20241001143816-comment.sql'));
    }

    public function down(Schema $schema): void
    {
        $this->addSql('DROP TABLE IF EXISTS symfony_demo_comment');
        $this->addSql('DROP TABLE IF EXISTS symfony_demo_post_tag');
        $this->addSql('DROP TABLE IF EXISTS symfony_demo_post');
        $this->addSql('DROP TABLE IF EXISTS symfony_demo_tag');
        $this->addSql('DROP TABLE IF EXISTS symfony_demo_user');
    }
}
