require_relative('../models/dog')
require_relative('../models/human')
require('pry')
# require_relative('../views/')

## LIST PAGE - all dogs without owner ##
get '/paws/dogs/search' do
  @dogs = Dog.allavailable()
  # binding.pry
  erb(:'dogs/available')
end

## LIST PAGE - all dogs with owner ##
get ('/paws/dogs/homed') do
  @dogs = Dog.allhomed()
  erb(:'dogs/notadoptable')
end

## NEW ##
post ('/paws/dogs/new') do
  Dog.new(params).save
  redirect to '/paws'
end

## SHOW ##
get ('/paws/dogs/:id') do
  @dog = Dog.find(params['id'])
  erb(:'dogs/show')
end

  ## DELETE ##
post ('/paws/dogs/:id/delete') do
  dog = Dog.find(params['id'])
  dog.delete
  redirect to '/paws'
end

## EDIT ##
get ('/paws/dogs/:id/edit') do
  @humans = Human.all
  @dog = Dog.find(params['id'])
  erb(:'dogs/edit')
end

## UPDATE ##
post('/paws/dogs/:id') do
  Dog.new(params).update
  redirect "/paws"
end
