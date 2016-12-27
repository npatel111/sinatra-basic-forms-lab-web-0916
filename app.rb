require_relative 'config/environment'
require 'byebug'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/show' do
    @puppy = Puppy.new(params["name"], params["breed"], params["age"])
    # byebug
    erb :display_puppy
  end

end
