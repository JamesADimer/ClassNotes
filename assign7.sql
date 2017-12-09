-- add sql queries under the appropriate comment
-- Data Definition
-- exercise 1
CREATE DATABASE IF NOT EXISTS soccer;

-- exercise 2
DROP TABLE IF EXISTS teams;
CREATE TABLE teams
(team_id INT AUTO_INCREMENT,
 team_name VARCHAR(35),
 CONSTRAINT PRIMARY KEY(team_id)
 );

-- exercise 3
DROP TABLE IF EXISTS players;
CREATE TABLE players
(player_id INT PRIMARY KEY AUTO_INCREMENT,
 first_name VARCHAR(35),
 last_name VARCHAR(35),
 birthdate DATE,
 rating CHAR(1),
 team INT,
 CONSTRAINT PRIMARY KEY(player_id),
 CONSTRAINT players_fk_team FOREIGN KEY(team_id)
    REFERENCES team(team_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

-- exercise 4
ALTER TABLE teams
ADD team_color VARCHAR(20);

-- exercise 5
DROP TABLE players;

-- Views
-- exercise 1
CREATE VIEW Dogs
AS
SELECT * FROM pet WHERE species = "dog";

-- exercise 2

-- Dogs is a horizontal view --

-- exercise 3
CREATE VIEW Birthday
AS
SELECT owner, e.name, date, remark FROM event e JOIN pet p ON e.name = p.name WHERE type = "birthday";