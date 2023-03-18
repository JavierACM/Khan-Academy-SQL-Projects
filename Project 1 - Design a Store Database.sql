/*
Create your own store! Your store should sell one type of things, like clothing or bikes, whatever you want your store to specialize in. 
You should have a table for all the items in your store, and at least 5 columns for the kind of data you think you'd need to store. 
You should sell at least 15 items, and use select statements to order your items by price and show at least one statistic about the items.
*/

-- Create a store
CREATE TABLE video_game_store (
    id INTEGER PRIMARY KEY,
    name TEXT,
    price INTEGER,
    inventory INTEGER,
    console TEXT
);

-- Insert values into table
INSERT INTO video_game_store VALUES
    (1, "The Last of Us Remastered", 19.99, 5, "PS4"),
    (2, "Elden Ring", 59.99, 20, "PC"),
    (3, "God of War Ragnorok", 69.99, 11, "PS5"),
    (4, "Mario Kart 8 Deluxe", 49.99, 10, "Nintendo Switch"),
    (5, "Uncharted 4: A Thieve's End", 49.99, 6, "PS5"),
    (6, "Phasmophobia", 13.99, 7, "PC"),
    (7, "Red Dead Redemption 2", 59.99, 8, "PC"),
    (8, "Inscryption", 19.99, 11, "PC"),
    (9, "Stardew Valley", 14.99, 12, "PC"),
    (10, "Portal 2", 9.99, 10, "PC"),
    (11, "Terraria", 9.99, 15, "PC"),
    (12, "Hollow Knight Voidheart Edition", 14.99, 7, "PS5"),
    (13, "DOOM Eternal", 39.99, 17, "PC"),
    (14, "Cyberpunk 2077", 59.99, 13, "PC"),
    (15, "Assassins Creed Valhalla", 59.99, 9, "PC");

-- View all items in store sorted by price and name
SELECT * FROM video_game_store ORDER BY price, name;

-- View the total amount of inventory in the store by using the SUM aggregate function
SELECT SUM(inventory) AS total_inventory FROM video_game_store;
