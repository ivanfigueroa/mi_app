require 'sinatra'
require './config'

get '/' do
    erb :index
end

post '/adivinar' do
    erb :index
end