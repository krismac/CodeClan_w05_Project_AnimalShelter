require_relative('../db/sql_runner')

class Human

  attr_reader :id, :first_name, :last_name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @first_name = options['first_name']
    @last_name = options['last_name']
    @adopter = options['adopter']
    @walker = options['walker']
  end

  def save()
    sql = "INSERT INTO humans
    (
      first_name,
      last_name,
      adopter,
      walker
    )
    VALUES
    (
      $1, $2, $3, $4
    )
    RETURNING id"
    values = [@first_name, @last_name, @adopter, @walker]
    result = SqlRunner.run(sql, values)
    id = result.first["id"]
    @id = id.to_i
  end

  def self.find(id)
    sql = "SELECT * FROM humans
    WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql ,values).first
    human = Human.new(result)
    return human
  end

  def self.all()
    sql = "SELECT * FROM humans"
    human_data = SqlRunner.run(sql)
    humans = map_items(human_data)
    return humans
  end

  def self.map_items(human_data)
    return human_data.map { |human| Human.new(human) }
  end

end
