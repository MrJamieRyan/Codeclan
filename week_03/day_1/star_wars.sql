DROP TABLE characters;

CREATE TABLE characters (
    id SERIAL,
    name VARCHAR(255),
    darkside BOOLEAN,
    age INT
);

-- INSERT INTO characters (name, darkside, age) VALUES ('Obi-Wan Kenobi', false, 27);
-- INSERT INTO characters (name, darkside, age) VALUES ('Anakin Skywalker', false, 19);
-- INSERT INTO characters (name, darkside, age) VALUES ('Darth Maul', true, 32);
-- INSERT INTO characters (name, darkside, age) VALUES ('Luke Skywalker', false, 17);
--
-- UPDATE characters SET (name, darkside) = ('Darth Vader', true) WHERE name = 'Anakin Skywalker';
-- UPDATE characters SET age = 65 WHERE name = 'Obi-Wan Kenobi';
--
-- DELETE FROM characters WHERE name = 'Obi-Wan Kenobi';

INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);

UPDATE characters SET age = 26 WHERE id = 3;

SELECT * FROM characters;
