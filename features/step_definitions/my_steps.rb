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

Then(/^el tablero debe tener "(.*?)" casillas$/) do |numeroImagenes|
  last_response.should have_xpath("//img[@id=\"imagen#{numeroImagenes}\"]")
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
