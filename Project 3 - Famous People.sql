/*
In this project, you’re going to make your own table with some small set of “famous people”, then make more tables about things they do 
and join those to create nice human readable lists.

For example, here are types of famous people and the questions your data could answer:

Movie stars: What movies are they in? Are they married to each other?
Singers: What songs did they write? Where are they from?
Authors: What books did they write?
Fictional characters: How are they related to other characters? What books do they show up in?
*/

-- Create a database of soccer players
CREATE TABLE players (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    age INTEGER,
    nationality TEXT,
    club_id INTEGER
);

-- Insert soccer players into database
INSERT INTO players (name, age, nationality, club_id)
VALUES
    ("Lionel Messi", 35, "Argentina", 1),
    ("Cristiano Ronaldo", 38, "Portugal", 2),
    ("Erling Haaland", 22, "Norway", 3),
    ("Gavi", 18, "Spain", 5),
    ("Mo Salah", 30, "Egypt", 4),
    ("Robert Lewandowski", 34, "Poland", 5),
    ("Neymar", 31, "Brazil", 1),
    ("Kylian Mbappe", 24, "France", 1),
    ("Kevin De Bruine", 31, "Belgium", 3),
    ("Sergio Busquets", 34, "Spain", 5),
    ("Sergio Ramos", 36, "Spain", 1),
    ("Virgil van Dijk", 31, "Netherlands", 4),
    ("Roberto Firmino", 31, "Brazil", 4),
    ("Pity Martinez", 29, "Argentina", 2),
    ("Ousmane Dembele", 25, "France", 5)
;

-- Create a database of soccer clubs
CREATE TABLE clubs (
    id INTEGER PRIMARY KEY,
    name TEXT,
    country TEXT,
    league TEXT
);

-- Insert clubs into database 
INSERT INTO clubs
VALUES
    (1, "Paris Saint-Germain", "France", "Ligue 1"),
    (2, "Al-Nassr", "Saudi Arabia", "Saudi Pro League"),
    (3, "Manchester City", "England", "Premier League"),
    (4, "Liverpool", "England", "Premier League"),
    (5, "Barcelona", "Spain", "La Liga")
;

-- Use a join to connect the 2 tables
SELECT
    c.name, p.name, p.age
FROM
    players AS p
JOIN
    clubs AS c
ON
    p.club_id = c.id
ORDER BY
    c.name, p.age;
