require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/dog')
require_relative('../models/human')
require_relative('../models/adoption.rb')
also_reload('../models/*')
require('pry')


## INDEX ##
get('/paws/adoptions/all') do
  @adoptions = Adoption.all()
  # binding.pry
  erb(:'adoptions/all')
end

## NEW ##
get('/paws/adoptions/new') do
  @humans = Human.all()
  @dogs = Dog.all()
  erb(:'adoptions/new')
end

## CREATE ##
post('/paws/adoptions') do
  @adoption = Adoption.new(params)
  @adoption.save
  erb(:'dogs/success')
end

## SHOW ##
get('/paws/adoptions/:id') do
  @adoption = Adoption.find(params[:id].to_i)
  erb(:'adoptions/show')
end

## DELETE ##
post('/paws/adoptions/:id/delete') do
  @adoption = Adoption.find(params[:id].to_i)
  @adoption.delete
  erb(:'dogs/success')
end

## EDIT ##
get('/paws/adoptions/:id/edit') do
  @id = params[:id].to_i
  @humans = Owner.all()
  @dogs = Dog.all()
  @adoption = Adoption.find(@id)
  erb(:"adoptions/edit")
end

## UPDATE ##
post('/paws/adoptions/:id') do
  Adoption.new(params).update
  erb(:'dogs/success')
end

def self.allhomed()
  sql = "SELECT * FROM dogs
        WHERE human_id IS NOT null;"
  dogs = SqlRunner.run(sql)
  dogs =  dogs.map { |dog| Dog.new(dog) }
  return dogs
end

def self.alladoptable()
  sql = "SELECT * FROM dogs
        WHERE human_id IS null
        AND dog_adoption_available IS true;"
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

  # SHOW
  get('/adoptions/:id') do
    @adoption = Adoption.find(params[:id].to_i)
    erb(:'adoptions/show')
  end

  # DELETE
  post('/adoptions/:id/delete') do
    @adoption = Adoption.find(params[:id].to_i)
    @adoption.delete
    redirect "/adoptions"
  end

  # EDIT
  get('/adoptions/:id/edit') do
    @id = params[:id].to_i
    @human = Human.all()
    @dog = Dog.all()
    @adoption = Adoption.find(@id)
    erb(:"adoptions/edit")
  end
