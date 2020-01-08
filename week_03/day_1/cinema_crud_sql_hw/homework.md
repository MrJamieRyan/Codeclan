# SQL Homework

The Springfield Cinema is having a Marvel Movie Marathon! They have asked you to help maintain their database of movies with times and attendees.

## To access the database:

First, create a database called 'marvel'

```
# terminal
createdb marvel
```

Next, run the provided SQL script to populate your database:

```
# terminal
psql -d marvel -f marvel.sql
```

Use the supplied data as the source of data to answer the questions. Copy the SQL command you have used to get the answer, and paste it below the question, along with the result they gave.

## Questions

1.  Return ALL the data in the 'movies' table.

SELECT title FROM movies;

title                
-------------------------------------
Iron Man
The Incredible Hulk
Iron Man 2
Thor
Captain America: The First Avenger
Avengers Assemble
Iron Man 3
Thor: The Dark World
Batman Begins
Captain America: The Winter Soldier
Guardians of the Galaxy
Avengers: Age of Ultron
Ant-Man
Captain America: Civil War
Doctor Strange
Guardians of the Galaxy 2
Spider-Man: Homecoming
Thor: Ragnarok
Black Panther


2.  Return ONLY the name column from the 'people' table

SELECT name FROM people;

name        
--------------------
Andrew Gray
Andrew Kirkwood
Andrew Wyper
Catherine Hall
Cosy Abott
Evan Smith
Gary Clark
James Fraser
James Smith
Jamie Ryan
Jen Merritt
Lauren Brett
Luca Sanz Charreun
Matteo Fusillo
Olivia Wright
Patrick ONeill
Ross Cumming
Sigurd Watt
Silvia Simonassi
Stephen Ramsay
Steve Vance
(21 rows)


3.  Oops! Someone spelled Cody Abbott's name wrong! Change it to reflect the proper spelling.

-- UPDATE people SET name = ('Cody Abbott') WHERE name = 'Cosy Abott';

DROP TABLE
DROP TABLE
CREATE TABLE
CREATE TABLE
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
UPDATE 1

4.  Return ONLY Olivia Wright's name from the 'people' table.

name      
---------------
Olivia Wright
(1 row)

5.  The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.

DELETE FROM movies WHERE title = 'Batman Begins';

6.  We forgot one of the main characters! Add Chris Fraser to the 'people' table

INSERT INTO people (name) VALUES ('Chris Fraser');
SELECT name FROM people;

7.  John Smith has decided to hijack our movie evening, Remove him from the table of people.

DELETE FROM people WHERE name = 'James Smith';
SELECT name FROM people;

8.  The cinema has just heard that they will be holding an exclusive midnight showing of 'Avengers: Infinity War'!! Create a new entry in the 'movies' table to reflect this.

INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Infinity War', 2018, '00:00');

9.  The cinema would like to make the Iron Man movies a triple billing. Find out the show time of "Iron Man 2" and set the show time of "Iron Man 3" to start two hours later.

UPDATE movies SET show_time = ('21:25') WHERE id = 7;
SELECT * FROM movies;

## Extension

1.  Research how to delete multiple entries from your table in a single command.
