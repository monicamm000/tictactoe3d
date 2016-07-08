require 'sinatra'
require './lib/Simbolo'

enable :sessions

get '/' do
    erb :home
end

post '/juego' do
  session["simboloJ1"] = params["simbolo"]
  simbolo = Simbolo.new params["simbolo"]
  session["simboloJ2"] = simbolo.getSimbolo
  session["turno"] = "Jugador 1"
  erb :index
end
