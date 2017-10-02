1. Find all the robots from Star Wars.
SELECT * FROM robots WHERE source='Star Wars';
# name |  source   | personality | id
# ------+-----------+-------------+----
# C3PO | Star Wars | anxious     |  4
# R2D2 | Star Wars | loyal       |  8

2. Find the robot with an "anxious" personality.
SELECT * FROM robots WHERE personality='anxious';
# name |  source   | personality | id
# ------+-----------+-------------+----
# C3PO | Star Wars | anxious     |  4

3. Find all recipes that are nut free.
SELECT name, nut_free FROM recipes WHERE nut_free = 't';
# name                                      | nut_free
# -------------------------------------------+----------
# Butternut Squash Bake                     | t
# Vegetarian Bibimbap                       | t
# French Veggie Loaf                        | t
# Quinoa and Black Beans                    | t
# Juicy Roasted Chicken                     | t
# Garlic Green Beans                        | t
# Stout Slow Cooker Corned Beef and Veggies | t

4. Count the number of recipes that are gluten free but not vegetarian.
SELECT COUNT(gluten_free = 't') FROM recipes WHERE vegetarian = 'f';
# 2

5. Find the animal with the most legs.
SELECT MAX(number_of_legs) FROM animals;
# 8
SELECT name FROM animals WHERE number_of_legs = 8;
# octopus

6. Find the board game that takes the least amount of time to play.
SELECT MIN(mins_to_play) FROM board_games;
# 15
SELECT name FROM board_games WHERE mins_to_play = 15;
# Sushi Go
# Quixo

7. Find the recipe that takes the most time to prepare.
SELECT MAX(minutes_required) FROM recipes;
 # 390
SELECT name FROM recipes WHERE minutes_required = 390;
# Stout Slow Cooker Corned Beef and Veggies

8. Find all the robots whose name starts with the letter M.
SELECT name FROM robots WHERE name LIKE 'M%';
# Marvin
# Mr. Butlertron

9. Count the number of board games that can be played by 8 people.
SELECT name FROM board_games WHERE max_players >= 8;
# Arkham Horror
# Cards Against Humanity
# Game of Things

10. Find all animals that are swimming and egg-laying.
SELECT name FROM animals WHERE swimming = 't' AND egg_laying = 't';
# octopus
# duck

11. Find all animals that are swimming and egg-laying but not flying.
SELECT name FROM animals WHERE swimming = 't' AND egg_laying = 't' AND flying = 'f';
# octopus

12. Find the board game that supports the largest number of people.
SELECT MAX(max_players) FROM board_games;
# 30
SELECT name FROM board_games WHERE max_players = 30;
# Cards Against Humanity
