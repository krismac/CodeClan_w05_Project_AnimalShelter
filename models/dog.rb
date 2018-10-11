require_relative('../db/sql_runner')

class Dog

  attr_accessor :animal_name, :animal_age, :animal_type, :animal_breed, :animal_location, :animal_profile, :dog_training, :dog_innoculation, :dog_neutered,:dog_admission_date, :dog_adoption_available, :dog_photo_file_path, :dog_adoption_complete
  attr_reader :id, :human_id

  def initialize(options)
    @id                     = options['id'].to_i
    @animal_name            = options['animal_name']
    @animal_age             = options['animal_age'].to_i
    @animal_type            = options['animal_type']
    @animal_breed           = options['animal_breed']
    @animal_location        = options['animal_location']
    @animal_profile         = options['animal_profile']
    @dog_training           = options['dog_training']
    @dog_innoculation       = options['dog_innoculation']
    @dog_neutered           = options['dog_neutered']
    @dog_adoption_available = options['dog_adoption_available']
    @dog_adoption_complete  = options['dog_adoption_complete']
    @dog_admission_date     = options['dog_admission_date']
    @dog_photo_file_path    = options['dog_photo_file_path']
    @human_id               = options['human_id'] != nil ? options['human_id'].to_i : options['human_id']
  end

  def trained?
    return @dog_training == 't'
    if @dog_training == 't'
      return true
    else
      return false
    end
  end

  def innoculated?
    if @dog_innoculation == 't'
      return true
    else
      return false
    end
  end

  def snipped?
    if @dog_neutered == 't'
      return true
    else
      return false
    end
  end

  def complete?
    if @dog_adoption_complete == 't'
      return true
    else
      return false
    end
  end

  def available?
    if @dog_adoption_available == 't'
      return true
    else
      return false
    end
  end

  def save()
    sql = "INSERT INTO dogs
    (
      animal_name,
      animal_age,
      animal_type,
      animal_breed,
      animal_location,
      animal_profile,
      dog_training,
      dog_innoculation,
      dog_neutered,
      dog_adoption_available,
      dog_adoption_complete,
      dog_admission_date,
      dog_photo_file_path,
      human_id
    )
    VALUES
    (
      $1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14
    )
    RETURNING id"
    values = [@animal_name, @animal_age, @animal_type, @animal_breed, @animal_location, @animal_profile, @dog_training, @dog_innoculation, @dog_neutered, @dog_adoption_available, @dog_adoption_complete, @dog_admission_date, @dog_photo_file_path, @human_id]
    result = SqlRunner.run(sql, values)
    id = result.first['id']
    @id = id
  end

  def update()
    sql = "UPDATE dogs
    SET
    (
      animal_name,
      animal_age,
      animal_type,
      animal_breed,
      animal_location,
      animal_profile,
      dog_training,
      dog_innoculation,
      dog_neutered,
      dog_adoption_available,
      dog_adoption_complete,
      dog_admission_date,
      dog_photo_file_path,
      human_id
    )
    VALUES
    (
      $1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13
    )
    WHERE id = $14"
    values = [@animal_name, @animal_age, @animal_type, @animal_breed, @animal_location, @animal_profile, @dog_training, @dog_innoculation, @dog_neutered, @dog_adoption_available, @dog_adoption_complete, @dog_admission_date, @dog_photo_file_path, @human_id, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM dogs
    WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM dogs;"
    dog = SqlRunner.run(sql)
    dogs =  dog.map { |dog| Dog.new(dog) }
    return dogs
  end

  def self.find(id)
    sql = "SELECT * FROM dogs WHERE id = $1"
    values = [id]
    dog_array = SqlRunner.run( sql, values )
    result = Dog.new(dog_array.first)
    return result
  end

end
