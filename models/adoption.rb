require_relative('../db/sql_runner')

class Adoption

  attr_reader :id, :human_id, :animal_id
  attr_accessor :dog_adoption_date, :status_update

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
      values = [@dog_adoption_date, @human_id, @animal_id, @status_update]
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
      WHERE id = $5"
      values = [@dog_adoption_date, @human_id, @animal_id, @status_update, @id]
      SqlRunner.run(sql, values)
    end

    def self.all()
      sql = "SELECT * FROM adoptions"
      adoptions = SqlRunner.run(sql)
      all_adoptions = adoptions.map { |adoption| Adoption.new(adoption) }
      return all_adoptions
    end

    def self.find(id)
      sql = "SELECT * FROM adoptions
      WHERE id = $1"
      adoption_array = SqlRunner.run(sql, [id])
      result = Adoption.new(adoption_array.first)
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
      result = Beast.new(dog_array.first)
      return result
    end

  end
