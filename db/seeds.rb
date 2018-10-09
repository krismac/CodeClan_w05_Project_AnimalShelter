require("pry")
require_relative('../models/human.rb')
require_relative('../models/dog.rb')

human1 = Human.new({
  'first_name' => 'Barack',
  'last_name' => 'OBama',
  'adopter' => 'Y',
  'walker'  => 'N'
  })
human2 = Human.new({
  'first_name' => 'Britney',
  'last_name' => 'Spears',
  'adopter' => 'Y',
  'walker'  => 'N'
  })
human3 = Human.new({
  'first_name' => 'John F.',
  'last_name' => 'Kennedy',
  'adopter' => 'Y',
  'walker'  => 'N'
  })
human4 = Human.new({
  'first_name' => 'Audrey',
  'last_name' => 'Hepburn',
  'adopter' => 'N',
  'walker'  => 'Y'
  })

human5 = Human.new({
  'first_name' => 'Inspector',
  'last_name' => 'Gadget',
  'adopter' => 'N',
  'walker'  => 'Y'
  })

human6 = Human.new({
  'first_name' => 'Kris',
  'last_name' => 'Mac',
  'adopter' => 'Y',
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
  'age' => 3,
  'animal_type' => 'Dog',
  'animal_breed' => 'Beagle',
  'animal_location' => 'Edinburgh',
  'animal_profile'  => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis fugit earum voluptas officia, quasi saepe et commodi, dolores cumque quam fuga ullam, itaque ea dignissimos asperiores adipisci ad eveniet repellendus!',
  'dog_training' => 'Y',
  'dog_innoculation' => 'Y',
  'dog_neutered' => 'Y',
  'dog_adoption_available' => 'Y',
  'admission_date' => '2018-05-18',
  'human_id' => human3.id
  })

dog2 = Dog.new({
  'animal_name' => 'Oisin',
  'age' => 4,
  'animal_type' => 'Dog',
  'animal_breed' => 'Dachshund',
  'animal_location' => 'Edinburgh',
  'animal_profile'  => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis fugit earum voluptas officia, quasi saepe et commodi, dolores cumque quam fuga ullam, itaque ea dignissimos asperiores adipisci ad eveniet repellendus!',
  'dog_training' => 'Y',
  'dog_innoculation' => 'Y',
  'dog_neutered' => 'Y',
  'dog_adoption_available' => 'Y',
  'admission_date' => '03/06/18',
  'human_id' => human4.id
  })

dog3 = Dog.new({
  'animal_name' => 'Jameson',
  'age' => 3,
  'animal_type' => 'Dog',
  'animal_breed' => 'Pug',
  'animal_location' => 'Edinburgh',
  'animal_profile'  => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis fugit earum voluptas officia, quasi saepe et commodi, dolores cumque quam fuga ullam, itaque ea dignissimos asperiores adipisci ad eveniet repellendus!',
  'dog_training' => 'Y',
  'dog_innoculation' => 'Y',
  'dog_neutered' => 'Y',
  'dog_adoption_available' => 'Y',
  'admission_date' => '03/05/18',
  'human_id' => human2.id
  })

dog4 = Dog.new({
  'animal_name' => 'Cara',
  'age' => 4,
  'animal_type' => 'Dog',
  'animal_breed' => 'Boxer',
  'animal_location' => 'Edinburgh',
  'animal_profile'  => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis fugit earum voluptas officia, quasi saepe et commodi, dolores cumque quam fuga ullam, itaque ea dignissimos asperiores adipisci ad eveniet repellendus!',
  'dog_training' => 'Y',
  'dog_innoculation' => 'Y',
  'dog_neutered' => 'Y',
  'dog_adoption_available' => 'Y',
  'admission_date' => '16/07/18',
  'human_id' => nil
  })

  dog5 = Dog.new({
    'animal_name' => 'Bran',
    'age' => 6,
    'animal_type' => 'Dog',
    'animal_breed' => 'Terrier',
    'animal_location' => 'Edinburgh',
    'animal_profile'  => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis fugit earum voluptas officia, quasi saepe et commodi, dolores cumque quam fuga ullam, itaque ea dignissimos asperiores adipisci ad eveniet repellendus!',
    'dog_training' => 'Y',
    'dog_innoculation' => 'Y',
    'dog_neutered' => 'Y',
    'dog_adoption_available' => 'Y',
    'admission_date' => '15/09/18',
    'human_id' => human6.id
    })

  dog6 = Dog.new({
    'animal_name' => 'Tayto',
    'age' => 3,
    'animal_type' => 'Dog',
    'animal_breed' => 'Bulldog',
    'animal_location' => 'Edinburgh',
    'animal_profile'  => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis fugit earum voluptas officia, quasi saepe et commodi, dolores cumque quam fuga ullam, itaque ea dignissimos asperiores adipisci ad eveniet repellendus!',
    'dog_training' => 'Y',
    'dog_innoculation' => 'Y',
    'dog_neutered' => 'Y',
    'dog_adoption_available' => 'Y',
    'admission_date' => '23/07/18',
    'human_id' => human5.id
    })

  dog7 = Dog.new({
    'animal_name' => 'Bosco',
    'age' => 4,
    'animal_type' => 'Dog',
    'animal_breed' => 'Portugese Waterdog',
    'animal_location' => 'Edinburgh',
    'animal_profile'  => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis fugit earum voluptas officia, quasi saepe et commodi, dolores cumque quam fuga ullam, itaque ea dignissimos asperiores adipisci ad eveniet repellendus!',
    'dog_training' => 'Y',
    'dog_innoculation' => 'Y',
    'dog_neutered' => 'Y',
    'dog_adoption_available' => 'Y',
    'admission_date' => '13/08/18',
    'human_id' => human1.id
    })

  dog8 = Dog.new({
    'animal_name' => 'Coilean',
    'age' => 1,
    'animal_type' => 'Dog',
    'animal_breed' => 'German Shepard',
    'animal_location' => 'Edinburgh',
    'animal_profile'  => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis fugit earum voluptas officia, quasi saepe et commodi, dolores cumque quam fuga ullam, itaque ea dignissimos asperiores adipisci ad eveniet repellendus!',
    'dog_training' => 'Y',
    'dog_innoculation' => 'Y',
    'dog_neutered' => 'Y',
    'dog_adoption_available' => 'Y',
    'admission_date' => '05/03/18',
    'human_id' => nil
    })

  dog9 = Dog.new({
    'animal_name' => 'Murphy',
    'age' => 7,
    'animal_type' => 'Dog',
    'animal_breed' => 'Maltese',
    'animal_location' => 'Edinburgh',
    'animal_profile'  => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis fugit earum voluptas officia, quasi saepe et commodi, dolores cumque quam fuga ullam, itaque ea dignissimos asperiores adipisci ad eveniet repellendus!',
    'dog_training' => 'Y',
    'dog_innoculation' => 'Y',
    'dog_neutered' => 'Y',
    'dog_adoption_available' => 'Y',
    'admission_date' => '05/10/18',
    'human_id' => nil
    })

    dog10 = Dog.new({
      'animal_name' => 'Cú',
      'age' => 5,
      'animal_type' => 'Dog',
      'animal_breed' => 'Irish Wolfhound',
      'animal_location' => 'Edinburgh',
      'animal_profile' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis fugit earum voluptas officia, quasi saepe et commodi, dolores cumque quam fuga ullam, itaque ea dignissimos asperiores adipisci ad eveniet repellendus!',
      'dog_training' => 'Y',
      'dog_innoculation' => 'Y',
      'dog_neutered' => 'Y',
      'dog_adoption_available' => 'Y',
      'admission_date' => '04/09/18',
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
