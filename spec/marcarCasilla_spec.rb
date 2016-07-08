describe MarcarCasilla do
  it "el jugador 1 debe marcar la casilla 1" do
    marcarCasilla = MarcarCasilla.new
    marcarCasilla.marcar.should == "O"
  end
end
