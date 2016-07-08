#language: es

Característica: un jugador puede elegir el simbolo, X o O

Escenario: un jugador ve las opciones para elegir un simbolo X o O
  Dado estoy eligiendo simbolo
  Entonces debo ver "Jugador 1"
  Y debo ver "X"

Escenario: un jugador ve las opciones para elegir un simbolo X o O
  Dado estoy eligiendo simbolo
  Entonces debo ver "Jugador 2"
  Y debo ver "O"


Escenario: un jugador elije el simbolo X
  Dado estoy eligiendo simbolo
  Cuando el jugador elije el simbolo "simboloX"
  Y inicio un juego
  Entonces debo ver "Jugador 1 jugará con X"


Escenario: un jugador elije el simbolo O
  Dado estoy eligiendo simbolo
  Cuando el jugador elije el simbolo "simboloO"
  Y inicio un juego
  Entonces debo ver "Jugador 1 jugará con O"
