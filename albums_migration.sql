USE codeup_test_db;

CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) DEFAULT 'NONE',
    name  VARCHAR(100) NOT NULL,
    release_date INT UNSIGNED NOT NULL,
    sales FLOAT NOT NULL,
    genre VARCHAR(500) NOT NULL,
    PRIMARY KEY (id)
);/Users/jacquelinemuralles/IdeaProjects/database-exercises/albums_migration.sql