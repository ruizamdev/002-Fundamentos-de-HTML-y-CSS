# Estructura de la hoja de estilos

Algunos ***statements*** contienen bloques y se definen entre un par de llaves `{}`, son separados mediante punto y coma `;`

<br>

## Top-level Statements
Las declaraciones que solo se pueden utilizar en la parte superior de la style sheet son:

- Imports
- Definicion de un Mixin
- Definicion de una funcion
- Uso de un modulo

<br>

## Universal Statements
Se pueden utilizaqr en cualquier parte de la style sheet:

- Variables, estructuras de control y las reglas `@error`, `@warn` y `@debug`
- Declaraciones CSS: Reglas de estilo, At-rules y Mixins.

<br>

## Tipos de variables
Las variables como sabremos a estas alturas es un espacio asignado en memoria y unicamente puede almacenar un dato. Su nombre describe perfectamente lo que es un dato que puede variar a lo largo de la ejecución de un programa.  
Las variables pueden ser declaradas en cualquier parte de la hoja de estilos.

Para asignar un valor a una variable se hace uso del símbolo de dinero `$`,  de esta manera es posible referenciar dentro de la hoja de estilos.

```css
$primary-color: blue;
$secondary-color: green;
$tertiary-color: purple;
```

<br>

Existen diferencias entre las variables de CSS y las Variables de Sass:

**Variables CSS**
- Pueden tener diferentes valores para distintos elementos.
- Son declarativas.

**Variables Sass**
- Tienen un valor único correspondiente a un elemento.
- son imperativas.

<br>

### Flag !default
Se encarga de asignar un valor a la variable si y solo si esa variable no esta definida o su valor es null.

