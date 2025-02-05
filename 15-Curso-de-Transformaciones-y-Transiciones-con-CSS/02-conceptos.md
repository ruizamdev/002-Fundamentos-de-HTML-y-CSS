# Conceptos Iniciales

## Propiedades para crear animaciones con CSS y propiedades animables

Tenemos una triada de propiedades que nos van a introducir al mundo de la animación de las interfaces:

- Transform
- Transition
- Animation

En este curso solo veremos los dos primeros.

### Propiedades animables

Significa que podemos cambiar gradualmente ciertas propiedades en un determinado periodo de tiempo.

## Pseudo-clases y pseudo-elementos en las animaciones

En materia de animaciones con css, tenemos que tener un concepto bien presente, el cual es trigger, del inglés, gatillo, disparador, accionador.

### Pseudo-classes

```css
a:link {
  color: hotpink;
}
a:visited {
  color: tomato;
}
a:hover {
  background-color: palegoldenrod;
}
```

### Pseudo-elements

```css
div::before {
  content: ":)";
}
div::after {
  content: ":(";
}
```

## Timing functions, planos y ejes

### Timing functions

Estos nos hablan de la aceleración de las animaciones.

Se toman las aceleraciones del mundo real y se replican en las animaciones.

Curvas de movimiento y aceleración:

[Easings](https://easings.net/)

[Cubic-bezier](https://cubic-bezier.com/)

### Planos y ejes

Eje X, Eje Y y Eje Z

La pantalla del navegador es plana, pero podemos darle profundidad mediante capas y el contexto de apilamiento.

![contexto-de-apilamiento](./assets/understanding_zindex_04.png)