require("pry")
require_relative('../models/human.rb')
require_relative('../models/dog.rb')
require_relative('../models/adoption.rb')

human1 = Human.new({
  'human_photo_file_path' =>  "/humans/barack.jpg",
  'first_name' => 'Barack',
  'last_name' => "O'Bama",
  'adopter' => 'Y',
  'walker'  => 'N'
  })
human2 = Human.new({
  'first_name' => 'Britney',
  'last_name' => 'Spears',
  'adopter' => 'Y',
  'human_photo_file_path' =>  "/humans/britney.jpg",
  'walker'  => 'N'
  })
human3 = Human.new({
  'first_name' => 'John F.',
  'last_name' => 'Kennedy',
  'adopter' => 'Y',
  'human_photo_file_path' =>  "/humans/johnf.jpg",
  'walker'  => 'N'
  })
human4 = Human.new({
  'first_name' => 'Audrey',
  'last_name' => 'Hepburn',
  'adopter' => 'N',
  'human_photo_file_path' =>  "/humans/audrey.jpg",
  'walker'  => 'Y'
  })

human5 = Human.new({
  'first_name' => 'Inspector',
  'last_name' => 'Gadget',
  'adopter' => 'N',
  'human_photo_file_path' =>  "/humans/inspector.jpg",
  'walker'  => 'Y'
  })

human6 = Human.new({
  'first_name' => 'Kris',
  'last_name' => 'Mac',
  'adopter' => 'Y',
  'human_photo_file_path' =>  "/humans/kris.jpg",
  'walker'  => 'Y'
  })

human1.save
human2.save
human3.save
human4.save
human5.save
human6.save

dog1 = Dog.new({
  'animal_name' => 'Porthos',
  'animal_age' => 3,
  'animal_type' => 'Dog',
  'animal_breed' => 'Beagle',
  'animal_location' => 'Edinburgh',
  'animal_profile'  => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis fugit earum voluptas officia, quasi saepe et commodi, dolores cumque quam fuga ullam, itaque ea dignissimos asperiores adipisci ad eveniet repellendus!',
  'dog_training' => 'Y',
  'dog_innoculation' => 'Y',
  'dog_neutered' => 'Y',
  'dog_adoption_available' => 'Y',
  'dog_adoption_complete'  => 'Y',
  'dog_admission_date' => '2018-05-18',
  'dog_photo_file_path' =>  "/dogs/beagle.jpg",
  'human_id' => human3.id
  })

dog2 = Dog.new({
  'animal_name' => 'Oisin',
  'animal_age' => 4,
  'animal_type' => 'Dog',
  'animal_breed' => 'Dachshund',
  'animal_location' => 'Edinburgh',
  'animal_profile'  => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis fugit earum voluptas officia, quasi saepe et commodi, dolores cumque quam fuga ullam, itaque ea dignissimos asperiores adipisci ad eveniet repellendus!',
  'dog_training' => 'N',
  'dog_innoculation' => 'Y',
  'dog_neutered' => 'Y',
  'dog_adoption_available' => 'N',
  'dog_adoption_complete'  => 'N',
  'dog_admission_date' => '2016-05-08',
  'dog_photo_file_path' =>  "/dogs/Dachshund.jpg",
  'human_id' => human4.id
  })

dog3 = Dog.new({
  'animal_name' => 'Jameson',
  'animal_age' => 3,
  'animal_type' => 'Dog',
  'animal_breed' => 'Pug',
  'animal_location' => 'Edinburgh',
  'animal_profile'  => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis fugit earum voluptas officia, quasi saepe et commodi, dolores cumque quam fuga ullam, itaque ea dignissimos asperiores adipisci ad eveniet repellendus!',
  'dog_training' => 'Y',
  'dog_innoculation' => 'Y',
  'dog_neutered' => 'N',
  'dog_adoption_available' => 'N',
  'dog_adoption_complete'  => 'N',
  'dog_admission_date' => '2016-09-18',
  'dog_photo_file_path' =>  "/dogs/pug.jpg",
  'human_id' => human2.id
  })

dog4 = Dog.new({
  'animal_name' => 'Cara',
  'animal_age' => 4,
  'animal_type' => 'Dog',
  'animal_breed' => 'Boxer',
  'animal_location' => 'Edinburgh',
  'animal_profile'  => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis fugit earum voluptas officia, quasi saepe et commodi, dolores cumque quam fuga ullam, itaque ea dignissimos asperiores adipisci ad eveniet repellendus!',
  'dog_training' => 'Y',
  'dog_innoculation' => 'Y',
  'dog_neutered' => 'Y',
  'dog_adoption_available' => 'Y',
  'dog_adoption_complete'  => 'N',
  'dog_admission_date' => '2016-09-15',
  'dog_photo_file_path' =>  '/dogs/default.jpg',
  'human_id' => nil
  })

  dog5 = Dog.new({
    'animal_name' => 'Bran',
    'animal_age' => 6,
    'animal_type' => 'Dog',
    'animal_breed' => 'Terrier',
    'animal_location' => 'Edinburgh',
    'animal_profile'  => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis fugit earum voluptas officia, quasi saepe et commodi, dolores cumque quam fuga ullam, itaque ea dignissimos asperiores adipisci ad eveniet repellendus!',
    'dog_training' => 'Y',
    'dog_innoculation' => 'Y',
    'dog_neutered' => 'Y',
    'dog_adoption_available' => 'Y',
    'dog_adoption_complete'  => 'Y',
    'dog_admission_date' => '2018-09-15',
    'dog_photo_file_path' =>  "/dogs/terrier.jpg",
    'human_id' => human6.id
    })

  dog6 = Dog.new({
    'animal_name' => 'Tayto',
    'animal_age' => 3,
    'animal_type' => 'Dog',
    'animal_breed' => 'Bulldog',
    'animal_location' => 'Edinburgh',
    'animal_profile'  => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis fugit earum voluptas officia, quasi saepe et commodi, dolores cumque quam fuga ullam, itaque ea dignissimos asperiores adipisci ad eveniet repellendus!',
    'dog_training' => 'Y',
    'dog_innoculation' => 'Y',
    'dog_neutered' => 'Y',
    'dog_adoption_available' => 'Y',
    'dog_adoption_complete'  => 'N',
    'dog_admission_date' => '2018-07-23',
    'dog_photo_file_path' =>  "/dogs/Bulldog.jpg",
    'human_id' => human5.id
    })

  dog7 = Dog.new({
    'animal_name' => 'Bosco',
    'animal_age' => 4,
    'animal_type' => 'Dog',
    'animal_breed' => 'Portugese Waterdog',
    'animal_location' => 'Edinburgh',
    'animal_profile'  => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis fugit earum voluptas officia, quasi saepe et commodi, dolores cumque quam fuga ullam, itaque ea dignissimos asperiores adipisci ad eveniet repellendus!',
    'dog_training' => 'Y',
    'dog_innoculation' => 'Y',
    'dog_neutered' => 'Y',
    'dog_adoption_available' => 'Y',
    'dog_adoption_complete'  => 'Y',
    'dog_admission_date' => '2018-08-13',
    'dog_photo_file_path' =>  "/dogs/waterdog.jpg",
    'human_id' => human1.id
    })

  dog8 = Dog.new({
    'animal_name' => 'Coilean',
    'animal_age' => 1,
    'animal_type' => 'Dog',
    'animal_breed' => 'German Shepard',
    'animal_location' => 'Edinburgh',
    'animal_profile'  => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis fugit earum voluptas officia, quasi saepe et commodi, dolores cumque quam fuga ullam, itaque ea dignissimos asperiores adipisci ad eveniet repellendus!',
    'dog_training' => 'Y',
    'dog_innoculation' => 'Y',
    'dog_neutered' => 'Y',
    'dog_adoption_available' => 'Y',
    'dog_adoption_complete'  => 'N',
    'dog_admission_date' => '2018-05-03',
    'dog_photo_file_path' =>  "/dogs/default.jpg",
    'human_id' => nil
    })

  dog9 = Dog.new({
    'animal_name' => 'Murphy',
    'animal_age' => 7,
    'animal_type' => 'Dog',
    'animal_breed' => 'Maltese',
    'animal_location' => 'Edinburgh',
    'animal_profile'  => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis fugit earum voluptas officia, quasi saepe et commodi, dolores cumque quam fuga ullam, itaque ea dignissimos asperiores adipisci ad eveniet repellendus!',
    'dog_training' => 'Y',
    'dog_innoculation' => 'Y',
    'dog_neutered' => 'Y',
    'dog_adoption_available' => 'Y',
    'dog_adoption_complete'  => 'N',
    'dog_admission_date' => '2018-10-18',
    'dog_photo_file_path' =>  "/dogs/Maltese.jpg",
    'human_id' => nil
    })

    dog10 = Dog.new({
      'animal_name' => 'Cú',
      'animal_age' => 5,
      'animal_type' => 'Dog',
      'animal_breed' => 'Irish Wolfhound',
      'animal_location' => 'Edinburgh',
      'animal_profile' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis fugit earum voluptas officia, quasi saepe et commodi, dolores cumque quam fuga ullam, itaque ea dignissimos asperiores adipisci ad eveniet repellendus!',
      'dog_training' => 'Y',
      'dog_innoculation' => 'Y',
      'dog_neutered' => 'Y',
      'dog_adoption_available' => 'Y',
      'dog_adoption_complete'  => 'N',
      'dog_admission_date' => '2018-04-15',
      'dog_photo_file_path' => "/dogs/Irish_wolfhound.jpg",
      'human_id' => nil
      })

dog1.save
dog2.save
dog3.save
dog4.save
dog5.save
dog6.save
dog7.save
dog8.save
dog9.save
dog10.save


adoption1 = Adoption.new({
  'dog_adoption_date' => '2018-03-15',
  'status_update' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.',
  'human_id' => human1.id,
  'animal_id' => dog7.id
  })

adoption2 = Adoption.new({
  'dog_adoption_date' => '2018-02-15',
  'update_update' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.',
  'human_id' => human6.id,
  'animal_id' => dog1.id
  })

adoption3 = Adoption.new({
  'dog_adoption_date' => '2018-01-15',
  'update_update' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.',
  'human_id' => human4.id,
  'animal_id' => dog5.id
  })

adoption1.save
adoption2.save
adoption3.save
