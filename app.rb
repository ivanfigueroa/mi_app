require 'sinatra'
require './config'
require './lib/ahorcado.rb'

get '/' do
    erb :index
end

post '/adivinar' do
    ahorcado = Ahorcado.new('ana')
    if ahorcado.arriesgar(params[:palabra])
        session[:feedback] = "Sí está en la palabra"
    end
    erb :index
end