# At-rules CSS y nesting

## At-rules

Es una declaración que cumple con diferente funciones, se inicializa con el símbolo arroba `@` y cuenta con sintaxis propia.  
Las at-rules dentro de Sass ayudan a mantener la compatibilidad con próximas versiones de CSS.

- **@use**: nos ayuda a importar módulos estilos y funciones de otras hojas de estilos.
- **@import**: igual que @use pero esta se encarga de los estilos globales
- **@function**: nos permite crear funciones personalizadas, Sass cuenta con funciones ya existentes.
- **@forward**: recibe como parámetro una url, y nos va ayudar a cargar los estilos de nuestra stylesheet.
- **@extend**: tiene que ver con herencia
- **@at-root**: se encarga de cargar nuestros estilos en el root de nuestro fichero css
- **@error**: sucede cuando existe un error en la compilación
- **@warn**: alerta para modificar algo
- **@debug**: para encontrar errores de manera mas sencilla
- **@include**: nos ayuda a invocar mixins
- **@for, @if, @each y @white**: tienen que ver con estructuras de control y se pueden utilizar dentro de una función

<br>

## Nesting
La anidación permite tener selectores dentro de otros, lo cual nos ayuda a simplificar código.  
Escribiendo los selectores en el orden que aparecen en el HTML.

```scss
nav {
    ul {
        margin: 4px;
        padding: 5px;
        list-style: none;
    }
    li {
        display: inline-block;
    }
    a {
        display: block;
        padding: 6px 12px;
        text-decoration: none;
    }
}
```

