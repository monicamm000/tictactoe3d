Feature:
Como jugador
Quiero poder iniciar el juego
Y ver el tablero de 9 casillas

Scenario: el titulo del juego Tic Tac Toe 3D
Given abri el juego
Then debo ver el titulo "Tic Tac Toe 3D"

Scenario: el tablero inicial es de 9 casillas
Given abri el juego
Then debo ver tablero "tablero9casillas"
And el tablero debe tener "9" casillas
