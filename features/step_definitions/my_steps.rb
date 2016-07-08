Given(/^abri el juego$/) do
  visit '/juego', :post
end

Given(/^estoy eligiendo simbolo$/) do
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
  fill_in("numCasilla", :with => numCasilla)
  click_button("Jugar")
end

Then(/^debo ver simbolo "(.*?)" en casilla "(.*?)"$/) do |simbolo, numCasilla|
   last_response.should have_xpath("//h1[text()='#{simbolo}' and @name='casilla#{numCasilla}']")
end

Entonces(/^debo ver "(.*?)"$/) do |simbolo|
  last_response.body.should =~ /#{simbolo}/m
end


Cuando(/^el jugador elije el simbolo "(.*?)"$/) do |simbolo|
  choose(simbolo)
end

Cuando(/^inicio un juego$/) do
  click_button("elegir")
end
