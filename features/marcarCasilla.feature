Feature:
Como jugador
Quiero poder seleccionar una casilla
Y que la casilla se llene con mi simbolo

Scenario: el jugador selecciona una casilla y ve su simbolo
Given abri el juego
Then seleccionar casilla "1"
And debo ver simbolo "X" en casilla "1"

Scenario: el jugador selecciona una casilla y ve su simbolo
Given abri el juego
Then seleccionar casilla "2"
And debo ver simbolo "X" en casilla "2"
