require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/human.rb' )
also_reload( '../models/*' )

## INDEX ##
get('/humans') do
  @humans = Human.all()
  erb(:'humans/index')
end

## NEW ##
get('/humans/new') do
  erb(:'humans/new')
end

## CREATE ##
post('/humans') do
  @human = Human.new(params)
  @human.save
  redirect '/humans'
end

## SHOW ##
get("/humans/:id") do
  @human = Human.find(params[:id].to_i)
  erb(:'humans/show')
end

## DELETE ##
post('/humans/:id/delete') do
  id = params[:id].to_i
  @human = Human.find(id)
  @human.delete
  redirect '/humans'
end

## EDIT ##
get("/humans/:id/edit") do
  @id = params[:id].to_i
  @human = Human.find(@id)
  erb(:'humans/edit')
end

## UPDATE ##
post('/humans/:id') do
  Human.new(params).update
  redirect "/humans"
end
