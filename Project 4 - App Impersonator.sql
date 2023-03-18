/*
Think about your favorite apps, and pick one that stores your data- like a game that stores scores, an app that lets you post updates, etc. 
Now in this project, you're going to imagine that the app stores your data in a SQL database (which is pretty likely!), and write SQL 
statements that might look like their own SQL.

CREATE a table to store the data.
INSERT a few example rows in the table.
Use an UPDATE to emulate what happens when you edit data in the app.
Use a DELETE to emulate what happens when you delete data in the app.
*/

-- Create a video game database
CREATE TABLE rocket_league (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player TEXT,
    games_played INTEGER,
    wins INTEGER,
    losses INTEGER
);

-- Inserting video game instances
INSERT INTO rocket_league (player, games_played, wins, losses)
    VALUES ("JavierACM11", 5, 2, 3);    
INSERT INTO rocket_league (player, games_played, wins, losses)
    VALUES ("JavierACM11", 6, 4, 2);
INSERT INTO rocket_league (player, games_played, wins, losses)
    VALUES ("JavierACM11", 1, 1, 0);

-- View the database
SELECT * FROM rocket_league;

-- Update the database
UPDATE rocket_league
SET wins = 0, losses = 1
WHERE id = 3;

-- View the updated database
SELECT * FROM rocket_league;

-- Delete a row from the database
DELETE FROM rocket_league
WHERE id = 2;

-- View the final database
SELECT * FROM rocket_league;
