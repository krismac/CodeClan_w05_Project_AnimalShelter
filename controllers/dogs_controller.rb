require_relative('../models/dog')
require_relative('../models/human')
require('pry')
# require_relative('../views/')

## LIST PAGE - all dogs without owner ##
get('/paws/dogs/all') do
  @dogs = Dog.all()
  # binding.pry
  erb(:'dogs/all')
end
#
# ## LIST PAGE - all dogs without owner ##
# get ('/paws/dogs/alladoptable') do
#   @dogs = Dog.alladoptable()
#   # binding.pry
#   erb(:'dogs/alladoptable')
# end
#
# ## LIST PAGE - all dogs with owner ##
# get ('/paws/dogs/homed') do
#   @dogs = Dog.allhomed()
#   erb(:'dogs/notadoptable')
# end

## NEW ##
get('/paws/dogs/new') do
  @humans = Human.all()
  erb(:'dogs/new')
end

## CREATE - Submit new ##
post('/paws/dogs') do
  @dog = Dog.new(params)
  @dog.save
  erb(:'dogs/success')
end

## SHOW ##   ## specific dog ##
get('/paws/dogs/:id') do
  id = params[:id].to_i #everything in params is a string so needs an integer
  @dog = Dog.find(id)
  erb(:'dogs/show')
end

  ## DELETE ##
post('/paws/dogs/:id/delete') do
  id = params[:id].to_i
  @dog = Dogs.find(id)
  @dog.delete
  redirect to(:'dogs/success')
end


## EDIT ##
get ('/paws/dogs/:id/edit') do
  @human = Human.all
  @dog = Dog.all
  @dog = Dog.find(params['id'])
  erb(:'dogs/edit')
end

## UPDATE ##
  post('/paws/dogs/:id') do
    Dog.new(params).update
    erb(:'dogs/success')
  end
