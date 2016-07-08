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
  session["casillas"] = ["1","2","3","4","5","6","7","8","9"]
  erb :index
end

post '/marcar' do
  if session["turno"] == "Jugador 1"
    session["turno"] = "Jugador 2"
    simboloEnTurno = session["simboloJ1"]
  else
    session["turno"] = "Jugador 1"
    simboloEnTurno = session["simboloJ2"]
  end
  @casilla = params["numCasilla"]
  session["casillas"][@casilla.to_i - 1] = simboloEnTurno


    erb :index
end
