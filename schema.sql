/* Database schema to keep the structure of entire database. */

CREATE TABLE animal (id BIGSERIAL PRIMARY KEY, name VARCHAR(50), date_of_birth DATE, escape_attempts INT, neutered BOOL, weight_kg DECIMAL);
ALTER TABLE animal ADD COLUMN species VARCHAR(100);
CREATE TABLE owner (id BIGSERIAL PRIMARY KEY, full_name VARCHAR(150), age INT);
CREATE TABLE species (id BIGSERIAL PRIMARY KEY, name VARCHAR(150));
ALTER TABLE animal DROP COLUMN IF EXISTS species;
ALTER TABLE animal ADD COLUMN species_id INT;
ALTER TABLE animal ADD CONSTRAINT fk_species FOREIGN KEY(species_id) REFERENCES species(id);
ALTER TABLE animal ADD COLUMN owner_id INT;

ALTER TABLE animal ADD CONSTRAINT fk_owner FOREIGN KEY(owner_id) REFERENCES owner(id);

CREATE TABLE vet(id BIGSERIAL PRIMARY KEY, name VARCHAR(150), age INT, date_of_graduation DATE);

CREATE TABLE specialization(species_id INT, vet_id INT, PRIMARY KEY(species_id, vet_id));

CREATE TABLE visit(animal_id INT, vet_id INT, PRIMARY KEY(animal_id, vet_id));
ALTER TABLE visit ADD COLUMN date_of_visit DATE;
ALTER TABLE visit DROP CONSTRAINT visit_pkey;
