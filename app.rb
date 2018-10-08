require('sinatra')
require('sinatra/contrib/all')
also_reload('./models/*')
require_relative('./controllers/dogs_controller.rb')


get '/' do
  erb( :index )
end

get '/paws' do
  erb(:index)
end

## HELP PAGE
get '/paws/help' do
  erb(:help)
end
