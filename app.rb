require 'sinatra'
require './lib/Simbolo'

enable :sessions

get '/' do
    erb :home
end

post '/juego' do
  @simboloJ1 = params["simbolo"]
  simbolo = Simbolo.new params["simbolo"]
  @simboloJ2 = simbolo.getSimbolo
  session["casillas"] = ["1","2",3,4,5,6,7,8,9]

    erb :index
end

post '/marcar' do
  @casilla = params["numCasilla"]
  @simboloEnTurno = "X"
  session["casillas"][@casilla.to_i - 1] = "X"

  erb :index
end
