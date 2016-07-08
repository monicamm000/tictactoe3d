require 'sinatra'
require './lib/Simbolo'

get '/' do
    erb :home
end

post '/juego' do
  @simboloJ1 = params["simbolo"]
  simbolo = Simbolo.new params["simbolo"]
  @simboloJ2 = simbolo.getSimbolo
    erb :index
end
