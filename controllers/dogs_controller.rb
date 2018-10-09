require_relative('../models/dog')
require_relative('../models/human')
require('pry')
# require_relative('../views/')

## LIST PAGE - all dogs without owner ##
get ('/paws/dogs/search') do
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
get('/paws/dogs/new') do
  @humans = Human.all()
  erb(:'dogs/new')
end

## CREATE - Submit new ##
post('/paws/dogs') do
  @dog = Dog.new(params)
  @dog.save
  # redirect "/"
  erb(:'dogs/success')
end

# post ('/paws/dogs/new') do
#   Dog.new(params).save
#   redirect to '/paws'
# end

## SHOW ##   ## specific dog ##
get('/paws/dogs/:id') do
  id = params[:id].to_i #everything in params is a string so needs an integer
  @dog = Dog.find(id)
  erb(:'dogs/show')
end

  ## DELETE ##
post ('/paws/dogs/:id/delete') do
  dog = Dog.find(params['id'])
  dog.delete
  redirect to '/paws/dogs/create'
end

## EDIT ##
get ('/paws/dogs/:id/edit') do
  @human = Human.all
  @dog = Dog.find(params['id'])
  erb(:'dogs/edit')
end

## UPDATE ##
post('/paws/dogs/:id') do
  Dog.new(params).update
  erb(:'dogs/success')

    # redirect to '/paws/dogs/create'
end
