/* Populate database with sample data. */
INSERT INTO animal (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Agumon', date '2020-02-03', 0, true, 10.23);
INSERT INTO animal (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Gabumon', date '2018-11-15', 2, true, 8.0);
INSERT INTO animal (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Pikachu', date '2021-01-07', 1, false, 15.04);
INSERT INTO animal (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Devimon', date '2017-05-12', 5, true, 11);
INSERT INTO animal (name, date_of_birth, escape_attempts, neutered, weight_kg, species) VALUES ('Charmander', date '2020-02-08', 0, false, -11, NULL);
INSERT INTO animal (name, date_of_birth, escape_attempts, neutered, weight_kg, species) VALUES ('Plantmon', date '2021-11-15', 2, true, -5.7, NULL);
INSERT INTO animal (name, date_of_birth, escape_attempts, neutered, weight_kg, species) VALUES ('Squirtle', date '1993-04-02', 3, false, -12.13, NULL);
INSERT INTO animal (name, date_of_birth, escape_attempts, neutered, weight_kg, species) VALUES ('Angemon', date '2005-06-12', 1, true, -45, NULL);
INSERT INTO animal (name, date_of_birth, escape_attempts, neutered, weight_kg, species) VALUES ('Boarmon', date '2005-06-07', 7, true, 20.4, NULL);
INSERT INTO animal (name, date_of_birth, escape_attempts, neutered, weight_kg, species) VALUES ('Blossom', date '1998-10-13', 3, true, 17, NULL);
INSERT INTO animal (name, date_of_birth, escape_attempts, neutered, weight_kg, species) VALUES ('Ditto', date '2022-05-14', 4, true, 22, NULL);
INSERT INTO owner (full_name, age) VALUES ('Sam Smith', 34);
INSERT INTO owner (full_name, age) VALUES ('Jennifer Orwell', 19);
INSERT INTO owner (full_name, age) VALUES ('Bob', 45);
INSERT INTO owner (full_name, age) VALUES ('Melody Pond', 77);
INSERT INTO owner (full_name, age) VALUES ('Dean Winchester', 14);
INSERT INTO owner (full_name, age) VALUES ('Jodie Whittaker', 38);
INSERT INTO species(name) VALUES('Pokemon');
INSERT INTO species(name) VALUES('Digimon');
UPDATE animal SET species_id = 2 WHERE name LIKE '%mon';
UPDATE animal SET species_id = 1 WHERE name NOT LIKE '%mon';
UPDATE animal SET owner_id = 1 WHERE name = 'Agumon';
UPDATE animal SET owner_id = 2 WHERE name = 'Gabumon';
UPDATE animal SET owner_id = 2 WHERE name = 'Pikachu';
UPDATE animal SET owner_id = 3 WHERE name = 'Devimon';
UPDATE animal SET owner_id = 3 WHERE name = 'Plantmon';
UPDATE animal SET owner_id = 4 WHERE name = 'Charmander';
UPDATE animal SET owner_id = 4 WHERE name = 'Squirtle';
UPDATE animal SET owner_id = 4 WHERE name = 'Blossom';
UPDATE animal SET owner_id = 5 WHERE name = 'Angemon';

UPDATE animal SET owner_id = 5 WHERE name = 'Boarmon';

INSERT INTO vet(name, age, date_of_birth) VALUES('William Tatcher', 45, date '2000-04-23');

INSERT INTO vet(name, age, date_of_birth) VALUES('Maisy Smith', 26, date '2019-01-17');

INSERT INTO vet(name, age, date_of_birth) VALUES('Stephanie Mendez', 64, date '1981-05-04');

INSERT INTO vet(name, age, date_of_birth) VALUES('Jack Harkness', 38, date '2008-06-08');

INSERT INTO specialization(species_id, vet_id) VALUES(1, 1);

INSERT INTO specialization(species_id, vet_id) VALUES(1, 3);

INSERT INTO specialization(species_id, vet_id) VALUES(2, 4);


INSERT INTO visit(animal_id, vet_id, date_of_visit) VALUES(1, 1, date '2020-05-24');

INSERT INTO visit(animal_id, vet_id, date_of_visit) VALUES(1, 3, date '2020-07-22');
INSERT INTO visit(animal_id, vet_id, date_of_visit) VALUES(2, 4, date '2021-02-02');
INSERT INTO visit(animal_id, vet_id, date_of_visit) VALUES(3, 2, date '2020-01-05');
INSERT INTO visit(animal_id, vet_id, date_of_visit) VALUES(3, 2, date '2020-05-14');
INSERT INTO visit(animal_id, vet_id, date_of_visit) VALUES(4, 3, date '2021-05-04');
INSERT INTO visit(animal_id, vet_id, date_of_visit) VALUES(5, 4, date '2021-02-24');
INSERT INTO visit(animal_id, vet_id, date_of_visit) VALUES(6, 2, date '2019-12-21');
INSERT INTO visit(animal_id, vet_id, date_of_visit) VALUES(6, 1, date '2020-10-10');
INSERT INTO visit(animal_id, vet_id, date_of_visit) VALUES(6, 2, date '2021-04-07');
INSERT INTO visit(animal_id, vet_id, date_of_visit) VALUES(7, 3, date '2019-09-29');
INSERT INTO visit(animal_id, vet_id, date_of_visit) VALUES(8, 4, date '2020-10-03');
INSERT INTO visit(animal_id, vet_id, date_of_visit) VALUES(8, 4, date '2020-11-04');
INSERT INTO visit(animal_id, vet_id, date_of_visit) VALUES(9, 2, date '2019-01-24');
INSERT INTO visit(animal_id, vet_id, date_of_visit) VALUES(9, 2, date '2019-05-15');
INSERT INTO visit(animal_id, vet_id, date_of_visit) VALUES(9, 2, date '2020-02-27');
INSERT INTO visit(animal_id, vet_id, date_of_visit) VALUES(9, 2, date '2020-08-03');
INSERT INTO visit(animal_id, vet_id, date_of_visit) VALUES(10, 3, date '2020-05-24');
INSERT INTO visit(animal_id, vet_id, date_of_visit) VALUES(10, 1, date '2021-01-11');
