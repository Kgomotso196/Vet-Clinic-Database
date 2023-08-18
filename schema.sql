/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (

     id                 int primary key not null,
     name               varchar not null,
     date_of_birth      date not null,
     escape_attempts    int not null,
     neutered           boolean not null,
     weight_kg          decimal(10, 2)
);

ALTER TABLE animals ADD COLUMN species varchar(255);

CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR,
    age INTEGER
);

CREATE TABLE species (
    id SERIAL PRIMARY KEY,
    name VARCHAR
);

ALTER TABLE animals DROP COLUMN species;

ALTER TABLE animals
    ADD COLUMN species_id INTEGER REFERENCES species(id),
    ADD COLUMN owner_id INTEGER REFERENCES owners(id);
