require 'sinatra'
require './config'
require './lib/ahorcado.rb'

get '/' do
    ahorcado = Ahorcado.new('ana')
    session[:ahorcado] = ahorcado
    erb :index
end

post '/adivinar' do
    
    if session[:ahorcado].arriesgar(params[:palabra])
        session[:feedback] = "Sí está en la palabra"
    else
        session[:feedback] = "No está en la palabra"
    end
    session[:errores] = session[:ahorcado].errores
    erb :index
end