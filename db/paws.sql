DROP TABLE dogs;
DROP TABLE humans;

CREATE TABLE humans (
  id SERIAL4 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  adopter BOOLEAN,
  walker BOOLEAN
);

CREATE TABLE dogs (
  id SERIAL4 PRIMARY KEY,
  animal_name VARCHAR(255),
  animal_age INT2,
  animal_type VARCHAR(255),
  animal_breed VARCHAR(255),
  animal_location VARCHAR(255),
  animal_profile TEXT,
  dog_training BOOLEAN,
  dog_innoculation BOOLEAN,
  dog_neutered BOOLEAN,
  dog_adoption_available BOOLEAN,
  admission_date DATE,
  human_id INT8 REFERENCES humans(id) ON DELETE CASCADE
);
