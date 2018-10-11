require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/human.rb' )
also_reload( '../models/*' )

## INDEX ##
get('/paws/humans/all') do
  @humans = Human.all()
  erb(:'humans/all')
end

## INDEX ##
get('/paws/humans/walkers') do
  @humans = Human.all()
  erb(:'humans/allwalkers')
end

## INDEX ##
get('/paws/humans/adopters') do
  @humans = Human.all()
  erb(:'humans/alladopters')
end

## NEW ##
get('/paws/humans/new') do
    @humans = Human.all()
  erb(:'humans/new')
end

## CREATE ##
post('/paws/humans') do
  @human = Human.new(params)
  @human.save
  erb(:'humans/success')
end

## SHOW ##
get("/paws/humans/:id") do
  @human = Human.find(params[:id].to_i)
  erb(:'humans/show')
end

## DELETE ##
post('/paws/humans/:id/delete') do
  id = params[:id].to_i
  @human = Human.find(id)
  @human.delete
  redirect '/paws/humans'
end

## EDIT ##
get("/paws/humans/:id/edit") do
  @id = params[:id].to_i
  @human = Human.find(@id)
  erb(:'humans/edit')
end

## UPDATE ##
post('/paws/humans/:id') do
  Human.new(params).update
  redirect "/paws/humans"
end
