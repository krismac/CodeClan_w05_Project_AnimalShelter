require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/adoption.rb')
also_reload('../models/*')


## INDEX ##
get('/paws/adoptions') do
  @adoptions = Adoption.all()
  erb(:'adoptions/index')
end

  #
  # def self.allhomed()
  #   sql = "SELECT * FROM dogs
  #         WHERE human_id IS NOT null;"
  #   dogs = SqlRunner.run(sql)
  #   dogs =  dogs.map { |dog| Dog.new(dog) }
  #   return dogs
  # end
  #
  # def self.allavailable()
  #   sql = "SELECT * FROM dogs
  #         WHERE human_id IS null;"
  #   dog = SqlRunner.run(sql)
  #   dogs =  dog.map { |dog| Dog.new(dog) }
  #   return dogs
  # end
  #
  # def self.allhomed()
  #   sql = "SELECT * FROM dogs
  #         WHERE human_id IS NOT null;"
  #   dogs = SqlRunner.run(sql)
  #   dogs =  dogs.map { |dog| Dog.new(dog) }
  #   return dogs
  # end


## NEW ##
get('/paws/adoptions/new') do
  @humans = Owner.all()
  @dogs = Dog.all()
  erb(:'adoptions/new')
end

## CREATE ##
post('/paws/adoptions') do
  @adoption = Adoption.new(params)
  @adoption.save
  redirect "/adoptions"
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
  redirect "/adoptions"
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
  redirect "/adoptions"
end
