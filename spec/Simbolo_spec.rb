require './lib/Simbolo'

describe Simbolo do
  it "Si jugador 1 elige X entonces jugador dos juega con O" do
    partido = Simbolo.new "X"
    partido.getSimbolo.should == "O"
  end

end
