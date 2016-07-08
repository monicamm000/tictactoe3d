require 'sinatra'
require './lib/Simbolo'

enable :sessions

get '/' do
    erb :home
end

post '/juego' do

  session["simboloJ1"] = params["simbolo"]
  session["simboloObj"] = Simbolo.new params["simbolo"]
  session["simboloJ2"] = session["simboloObj"].getSimbolo
  session["turno"] = "Jugador 1"
  erb :index
end

post '/marcar' do
  if session["turno"] == "Jugador 1"
    session["turno"] = "Jugador 2"
  else
    session["turno"] = "Jugador 1"
  end
    erb :index
end
