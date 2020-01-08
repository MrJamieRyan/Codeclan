-- Code up until adding SERIAL to Characters/Starter code for one_to_many
DROP TABLE lightsabers;
DROP TABLE characters;

CREATE TABLE characters (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  darkside BOOLEAN,
  age INT
);

CREATE TABLE lightsabers (
id SERIAL PRIMARY KEY,
hilt_metal VARCHAR(255) NOT NULL,
colour VARCHAR(255) NOT NULL,
character_id INT REFERENCES characters(id)
);

INSERT INTO characters (name, darkside, age) VALUES ('Obi-Wan Kenobi', false,  27);
INSERT INTO characters (name, darkside, age) VALUES ('Anakin Skywalker', false, 19);
INSERT INTO characters (name, darkside, age) VALUES ('Darth Maul', true, 32);

INSERT INTO lightsabers (hilt_metal, colour, character_id) VALUES ('steel', 'green', 1);
INSERT INTO lightsabers (hilt_metal, colour, character_id) VALUES ('death metal', 'black', 2);

SELECT * FROM lightsabers WHERE character_id = 2;

-- INSERT INTO characters (name, darkside) VALUES ('Yoda', false);
--
-- UPDATE characters SET (name, darkside) = ('Darth Vader', true) WHERE name = 'Anakin Skywalker';
--
-- DELETE FROM characters WHERE name = 'Darth Maul';
--
-- INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
-- INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
-- INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
-- INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
-- INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
--
-- UPDATE characters SET age = 29 WHERE id = 9;
--
SELECT * FROM characters;
