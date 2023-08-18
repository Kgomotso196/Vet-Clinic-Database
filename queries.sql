/*Queries that provide answers to the questions from all projects.*/
SELECT * FROM animal WHERE name LIKE '%mon';
SELECT name from animal WHERE date_of_birth  >= '2016-01-01' AND date_of_birth <= '2019-12-31';
SELECT name FROM animal WHERE neutered = true AND escape_attempts < 3;
SELECT date_of_birth FROM animal WHERE name = 'Agumon' OR name = 'Pikachu';
SELECT name, escape_attempts FROM animal WHERE weight_kg > 10.5;
SELECT * from animal WHERE name != 'Gabumon';
SELECT * from animal WHERE neutered = true;
SELECT * FROM animal WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;
BEGIN;
DELETE FROM animal WHERE date_of_birth > '2022-01-01';
SAVEPOINT delete_from_date;
UPDATE animal SET weight_kg = weight_kg * -1;
SAVEPOINT update_weight_by_1;
ROLLBACK TO delete_from_date;
UPDATE animal SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
COMMIT;
SELECT COUNT(id) AS total_animals FROM animal;
SELECT COUNT(id) AS total_animals FROM animal WHERE escape_attempts = 0;
SELECT ROUND(AVG(weight_kg), 2) AS avg_weight FROM animal;
SELECT neutered, MAX(escape_attempts) AS most_escape FROM animal GROUP BY neutered;
SELECT MIN(weight_kg) AS min_weight, MAX(weight_kg) AS max_weight FROM animal GROUP BY species;
SELECT species, ROUND(AVG(escape_attempts), 2) AS avg_attempt FROM animal WHERE date_of_birth BETWEEN DATE '1990-01-01' AND '2000-12-31' GROUP BY species;
SELECT * FROM animal JOIN owner ON animal.owner_id = owner.id WHERE owner.full_name = 'Melody Pond';
SELECT * FROM animal JOIN species ON animal.species_id = species.id WHERE species.name = 'Pokemon';
SELECT full_name, age, name AS animal_name FROM owner LEFT JOIN animal ON owner.id = animal.owner_id;
SELECT species.name, COUNT(species.name) FROM animal JOIN species ON animal.species_id = species.id GROUP BY species.name;
SELECT animal.name AS animal, owner.full_name AS owner, species.name AS type FROM animal JOIN owner ON animal.owner_id = owner.id JOIN species ON animal.species_id = species.id WHERE owner.full_name = 'Jennifer Orwell' AND species.name = 'Digimon';
SELECT animal.name AS animal, animal.escape_attempts, owner.full_name AS owner FROM animal JOIN owner ON animal.owner_id = owner.id WHERE owner.full_name = 'Dean Winchester' AND animal.escape_attempts = 0;
SELECT owner.full_name, count(owner.full_name) FROM animal JOIN owner ON animal.owner_id = owner.id GROUP BY owner.full_name HAVING COUNT(owner.full_name) = (SELECT MAX(count) FROM (SELECT COUNT(owner.full_name) FROM animal JOIN owner ON animal.owner_id = owner.id GROUP BY owner.full_name) count);
SELECT animal.name AS animal, vet.name AS vet_name, visit.date_of_visit FROM animal JOIN visit ON animal.id = visit.animal_id JOIN vet ON vet.id = visit.vet_id WHERE vet.name = 'William Tatcher' ORDER BY visit.date_of_visit DESC LIMIT 1;

SELECT COUNT(vet.name) FROM animal JOIN visit ON animal.id = visit.animal_id JOIN vet ON vet.id = visit.vet_id WHERE vet.name = 'Stephanie Mendez';

SELECT vet.name, vet.age, vet.date_of_graduation, species.name AS specialization FROM vet LEFT JOIN specialization ON vet.id = specialization.vet_id LEFT JOIN species ON specialization.species_id = species.id;

SELECT animal.name AS animal, vet.name AS vet, visit.date_of_visit FROM animal JOIN visit ON animal.id = visit.animal_id JOIN vet ON visit.vet_id = vet.id WHERE vet.name = 'Stephanie Mendez' AND visit.date_of_visit BETWEEN date '2020-04-01' AND '2020-08-30';

SELECT animal.name, COUNT(animal.name) FROM animal JOIN visit ON animal.id = visit.animal_id GROUP BY animal.name HAVING COUNT(animal.name) = (SELECT MAX(count) FROM (SELECT COUNT(animal.name) FROM animal JOIN visit ON animal.id = visit.animal_id GROUP BY animal.name) count);

SELECT animal.name, visit.date_of_visit FROM animal JOIN visit ON animal.id = visit.animal_id JOIN vet ON vet.id = visit.vet_id WHERE vet.name = 'Maisy Smith' ORDER BY visit.date_of_visit LIMIT 1;

SELECT animal.name, animal.date_of_birth, animal.escape_attempts, animal.neutered, animal.weight_kg, vet.name AS vet_name, vet.age AS vet_age, vet.date_of_graduation AS graduation, visit.date_of_visit FROM animal JOIN visit ON animal.id = visit.animal_id JOIN vet ON vet.id = visit.vet_id ORDER BY visit.date_of_visit DESC LIMIT 1;

SELECT COUNT(*) FROM vet LEFT JOIN specialization ON vet.id = specialization.vet_id LEFT JOIN visit on vet.id = visit.vet_id WHERE specialization.species_id IS NULL;

SELECT species.name, COUNT(species.name) FROM vet JOIN visit ON visit.vet_id = vet.id JOIN animal ON animal.id = visit.animal_id JOIN species ON species.id = animal.species_id WHERE vet.name = 'Maisy Smith' GROUP BY species.name ORDER BY count DESC LIMIT 1;
