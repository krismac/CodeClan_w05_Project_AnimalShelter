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
  erb(:'adoptions/all')
end

##Available for adoption
get('/paws/adoptions/adoptable') do
  @adoptions = Adoption.alladoptable()
  erb(:'adoptions/alladoptable')
end

##Not available for adoption
get('/paws/adoptions/notadoptable') do
  @adoptions = Adoption.allnotadoptable()
  # binding.pry
  erb(:'adoptions/allnotadoptable')
end

## SHOW ##
get('/paws/adoptions/:id') do
  @adoption = Adoption.find(params[:id].to_i)
  erb(:'adoptions/show')
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
  dog = Dog.find(params['animal_id'])
  dog.set_adopted()
  dog.update()
  erb(:'dogs/success')
end

# EDIT
  get('/adoptions/:id/edit') do
    @id = params[:id].to_i
    @human = Human.all()
    @dog = Dog.all()
    @adoption = Adoption.find(@id)
    erb(:"adoptions/edit")
  end

## UPDATE ##
post('/paws/adoptions/:id') do
  Adoption.new(params).update
  erb(:'dogs/success')
end

## DESTROY ##
post('/paws/adoptions/:id/delete') do
  @adoption = Adoption.find(params[:id].to_i)
  @adoption.delete
  erb(:'dogs/success')
end
