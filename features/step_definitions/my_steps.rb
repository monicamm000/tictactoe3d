Given(/^abri el juego$/) do
  visit '/'
end

Then(/^debo ver el titulo "(.*?)"$/) do |tituloJuego|
  last_response.body.should =~ /#{tituloJuego}/m
end

Then(/^debo ver tablero "(.*?)"$/) do |tablero|
  last_response.should have_xpath("//table[@id=\"#{tablero}\"]")
end

Then(/^el tablero debe tener "(.*?)" casillas$/) do |numeroCasillas|
  last_response.should have_xpath("//td[@id=\"casilla#{numeroCasillas}\"]")
end

Then(/^seleccionar casilla "(.*?)"$/) do |numCasilla|
  check(numCasilla)
end

Then(/^debo ver simbolo "(.*?)" en casilla "(.*?)"$/) do |simbolo, numCasilla|
   last_response.should have_xpath("//h3[text()='#{simbolo}' and @name='casilla#{numCasilla}']")
end
