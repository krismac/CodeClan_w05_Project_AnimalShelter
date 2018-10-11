DROP TABLE adoptions;
DROP TABLE dogs;
DROP TABLE humans;

CREATE TABLE humans (
  id SERIAL4 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  adopter BOOLEAN,
  walker BOOLEAN,
  human_photo_file_path VARCHAR(255)
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
  dog_adoption_complete BOOLEAN,
  dog_admission_date DATE,
  dog_photo_file_path VARCHAR(255),
  human_id INT8 REFERENCES humans(id) ON DELETE CASCADE
);

CREATE TABLE adoptions (
  id SERIAL8 PRIMARY KEY,
  dog_adoption_date DATE,
  status_update TEXT,
  human_id INT8 REFERENCES humans(id) ON DELETE CASCADE,
  animal_id INT8 REFERENCES dogs(id) ON DELETE CASCADE
);
