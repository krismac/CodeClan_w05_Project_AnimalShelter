require_relative('../db/sql_runner')

class Adoption

  attr_reader :id, :human_id, :animal_id
  attr_accessor :dog_adoption_date, :status_update,

  def initialize(options)
    @id = options['id'].to_i
    @dog_adoption_date = options['dog_adoption_date']
    @status_update = options['status_update']
    @human_id = options['human_id'].to_i
    @animal_id = options['animal_id'].to_i
  end

    def save()
      sql = "INSERT INTO adoptions
      (
        dog_adoption_date,
        human_id,
        animal_id,
        status_update
      )
      VALUES (
        $1, $2, $3, $4
      )
      RETURNING id"
      values = [
        @dog_adoption_date,
        @human_id,
        @animal_id,
        @status_update
      ]
      result = SqlRunner.run(sql, values)
      @id = result[0]['id'].to_i
    end

    def self.delete_all()
      sql = "DELETE FROM adoptions"
      SqlRunner.run(sql)
    end

    def update()
      sql = "UPDATE adoptions
       (
        dog_adoption_date,
        human_id,
        animal_id,
        status_update
        )
      VALUES (
        $1, $2, $3, $4
      )
      WHERE id = $5;"
      values = [@dog_adoption_date, @human_id, @animal_id, @status_update, @id]
      SqlRunner.run(sql, values)
    end

    def self.all()
      sql = "SELECT * FROM adoptions;"
      adoptions = SqlRunner.run(sql)
      dogs = adoptions.map { |adoption| Adoption.new(adoption) }
      return dogs
    end

    def self.alladopted()
      sql = "SELECT * FROM dogs
            WHERE dog_adoption_complete IS true;"
      dogs = SqlRunner.run(sql)
      dogs =  dogs.map { |dog| Dog.new(dog) }
      return dogs
    end

    def self.alladoptable()
      sql = "SELECT * FROM dogs
            WHERE dog_adoption_available IS true
            AND dog_adoption_complete IS false;"
      dog = SqlRunner.run(sql)
      dogs =  dog.map { |dog| Dog.new(dog) }
      return dogs
    end

    def self.allnotadoptable()
      sql = "SELECT * FROM dogs
            WHERE human_id IS null
            AND dog_adoption_available IS false;"
      dog = SqlRunner.run(sql)
      dogs =  dog.map { |dog| Dog.new(dog) }
      return dogs
    end

    def self.find(id)
      sql = "SELECT * FROM adoptions WHERE id = $1"
      values = [id]
      array = SqlRunner.run( sql, values )
      result = Adoption.new(array.first)
      return result
    end

    def delete()
      sql = "DELETE FROM adoptions
      WHERE id = $1"
      SqlRunner.run(sql, [@id])
    end

    def human()
      sql = "Select * FROM humans
      WHERE id = $1"
      human_array = SqlRunner.run(sql, [@human_id])
      result = Human.new(human_array.first)
      return result
    end

    def dog()
      sql = "Select * FROM dogs
      WHERE id = $1"
      dog_array = SqlRunner.run(sql, [@animal_id])
      result = Dog.new(dog_array.first)
      return result
    end

    def adopted()
      sql = "UPDATE dogs
      SET dog_adoption_complete = 'False'
      WHERE id = $1"
      SqlRunner.run(sql, [@animal_id])
    end

    def adoptable()
      sql = "UPDATE dogs
      SET dog_adoption_available = 'False'
      WHERE id = $1"
      SqlRunner.run(sql, [@animal_id])
    end

    def adopting()
      sql = "UPDATE humans
      SET adopter = 'True'
      WHERE id = $1"
      SqlRunner.run(sql, [@animal_id])
    end

    def self.adoption_by_date
      today = Date.today
      week = (today - 7)
      sql = "SELECT * FROM adoptions WHERE date BETWEEN '#{week}' AND '#{today}'"
      adoptions_hash = SqlRunner.run(sql)
      adoptions_no = adoptions_hash.count
      return adoptions_no
    end

    def self.adoption_complete_status
      sql = "SELECT * FROM dogs WHERE human_id IS NOT null
      AND dog_adoption_available IS FALSE;"
      adoptions = SqlRunner.run(sql)
      all_adoptions = adoptions.map { |adoption| Adoption.new(adoption) }
      return all_adoptions
    end


    def self.adoption_required
      animals = Animal.all
      count = 0
      animals.each do |animal|
        count += 1 if animal.adoption_required_status == 0
      end
      return count
    end

    def self.adoption_required_status
      sql = "SELECT * FROM dogs WHERE human_id IS null
      AND dog_adoption_available IS TRUE;"
      adoptions = SqlRunner.run(sql)
      all_adoptions = adoptions.map { |adoption| Adoption.new(adoption) }
      return all_adoptions
    end

    def self.adoption_on_hold_count
      animals = Animal.all
      count = 0
      animals.each do |animal|
        count += 1 if adoption_date != null
      end
      return count
    end

    def self.adoption_on_hold_status
      sql = "SELECT * FROM dogs WHERE human_id IS null
      AND dog_adoption_available IS FALSE;"
      adoptions = SqlRunner.run(sql)
      all_adoptions = adoptions.map { |adoption| Adoption.new(adoption) }
      return all_adoptions
    end

  end
