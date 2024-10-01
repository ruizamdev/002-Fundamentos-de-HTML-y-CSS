# Mi primer programa con HTML y JavaScript

### Variables
Son c**ontenedores** en los que se les puede almacenar **datos**, estos datos pueden ser de distintos tipos, los mas comunes son **integer** (números enteros), f**loat**(números decimales), **strings**(cadenas de texto), entre otros.

### Operaciones aritméticas
En la programación se utilizan los mismos signos de operación y las mismas reglas que en la aritmética, podemos hacer operaciones de **suma**, **resta**, **multipicación**, **división** entre otras.

### Operadores de comparación
Son simbolos que nos ayudan a comparar datos estos son, **mayor que** `>`, **menor que** `<`, **igual que** `==`, **diferente que** `=!`, **mayor o igual que** `>=` y **menor o igual que** `<=`

### Operadores Lógicos
Estos operadores nos permiten establecer condiciones para determinar el camino que tomará la secuencia del programa. Algunos de estos son **AND**, **OR**, **NOT**, **XOR**, **NAND**.

Mi primer programa es un juego de Piedra, Papel o Tijeras, escrito en HTML y JavaScript en la clase de Programación Básica con Freddy de Platzi. Puede ver el código [aquí](002_piedraPapelTijera.html)

### Funciones
En la programación podemos crear algo llamado **función**, el cual es un pedacito de código, que, mientras los escribamos de una manera de propósito general podemos reutilizarlos muchas veces. Una regla de la programación es que no deberías de estar copiando y pegando el mismo código, si llegas a un punto en el que tienes que copiar y pegar un pedazo de código muchas veces, es mejor convertirlo en una función, para poder invocarla cuando sea necesario.

<br>

> Nota: Primero se declaran las funciones que van a ser utilizadas en el programa. Esto, con JavaScript, en los navegadores nos estrictamente así, la ejecución es más permisiva, podemos escribir una función en medio o hasta abajo y el navegador será capaz de de ejecutar el programa sin ningún problema, pero en otros lenguajes de programación no es posible hacerlo, son mas estrictos en cuanto al flujo de sentencias o el modo secuencial en el que se van ejecutando las ordenes. Por lo que aunque en JavaScript para Web no es totalmente necesario declarar las funciones en la parte de arriba, si es una buena practica de programación, para tener una estructura de código estándar, además de que tener este habito, nos ayudará a dominar otros lenguajes de programación más estrictos en un futuro.

<br>

Del codigo del juego [Piedra, Papel o Tijeras](002_piedraPapelTijera.html) podemos crear la siguiente función:

```javascript
function eleccion(jugada) {
    let resultado = "";
    if (jugada == 1){
            resultado = "Piedra 🥌";
    } else if (jugada == 2){
            resultado = "Papel 📰";
    } else if (jugador == 3){
            resultado = "Tijeras ✂ ";
    } else{
            resultado "MALA ELECCIÓN";
    }
    return resultado;
}
```

<br>

El código quedaría [así](003_piedraPapelTijera2.html)

<br>

### Ciclos
Los ciclos son piezas de código que se repiten hasta que se cumple una condición determinada. Todos los ciclos deben tener una condición que los frene, si no sería un ciclo infinito.

