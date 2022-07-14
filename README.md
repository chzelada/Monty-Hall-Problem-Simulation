# Simulación del problema de Monty Hall

## Enunciado del problema
Supón que estás en un concurso, y se te ofrece escoger entre tres puertas: detrás de una de ellas hay un coche, y detrás de las otras, cabras.
Escoges una puerta, digamos la nº1, y el presentador, que sabe lo que hay detrás de las puertas, abre otra, digamos la nº3, que contiene una cabra. 
Entonces te pregunta: "¿No prefieres escoger la nº2?". ¿Es mejor para ti cambiar tu elección?

### Premisa
Se ofrece un concurso cuya mecánica es la siguiente:

* Al concursante se le ofrece la posibilidad de escoger una entre tres puertas. Tras una de ellas se encuentra un coche, y tras las otras dos hay una cabra. El concursante gana el premio que se oculta detrás de la puerta que escoja.
* Después de que el concursante escoja una puerta, el presentador abre una de las otras dos puertas, mostrando una cabra. Siempre puede hacerlo ya que incluso si el concursante ha escogido una cabra, queda otra entre las puertas que ha descartado y el presentador conoce lo que hay detrás de cada puerta.
*Entonces, ofrece al concursante la posibilidad de cambiar su elección inicial y escoger la otra puerta que descartó originalmente, que continúa cerrada.

La pregunta oportuna es: ¿debe hacerlo o no?

https://es.wikipedia.org/wiki/Problema_de_Monty_Hall

## Solucion por simulación

En el caso de este proyecto vamos a resolver el problema usando simulación del juego, siguendo los siguientes pasos

1. Crear un juego: Un vector de logitud tres cada posicion representa una puerta y en cada posicion hay una cabra o un auto.
2. Seleccion al azar de puerta del jugardor
3. Seleccion al azar de la cabra a mostrar
4. Seleccion de la estrategia del jugardor: Cambiar o no cambiar
5. Generacion de n cantidad de juegos para calcular la probabilidad de ganar basado en las dos estrategias.


## Funciones

