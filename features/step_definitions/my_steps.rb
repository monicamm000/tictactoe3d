Given(/^abri el juego$/) do
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
