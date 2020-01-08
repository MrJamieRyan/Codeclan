-- -- SELECT characters.*, lightsabers.* FROM characters
-- SELECT characters.name, lightsabers.colour FROM characters
--
-- INNER JOIN lightsabers
-- ON characters.id = lightsabers.character_id;

SELECT characters.*, lightsabers.* FROM characters
LEFT JOIN lightsabers
ON characters.id = lightsabers.character_id;
