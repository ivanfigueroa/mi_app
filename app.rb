require 'sinatra'
require './config'
require './lib/ahorcado.rb'

get '/' do
    ahorcado = Ahorcado.new('ana')
    session[:ahorcado] = ahorcado
    session[:palabraSecreta] = session[:ahorcado].palabraSecreta
    session[:feedback] = ""
    session[:errores] = 0
    erb :index
end

post '/adivinar' do
    
    if session[:ahorcado].arriesgar(params[:palabra])
        session[:feedback] = "Sí está en la palabra"
        session[:palabraSecreta] = session[:ahorcado].palabraSecreta
    else
        session[:feedback] = "No está en la palabra"
    end

    session[:errores] = session[:ahorcado].errores

    if session[:ahorcado].perdiste
        session[:feedback] = "Game Over"
    end

    if session[:ahorcado].ganaste
        session[:feedback] = "Adivinaste la palabra secreta"
    end
    erb :index
end