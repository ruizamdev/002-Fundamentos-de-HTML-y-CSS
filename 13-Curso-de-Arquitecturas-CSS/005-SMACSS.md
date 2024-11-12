# Arquitectura SMACSS

S - Scalable
M - Modular
A - Architecture
C - Cascade
S - Style
S - Sheet

Es una Arquitectura Modular Escalable, nos indica que hay que separar los proyectos en diferentes tipos de carpetas:

- Base
- Layout
- Modules
- State
- Theme

## Base
- Estilos predeterminados
- Selectores de elementos o pseudo-clases
  - no clases
  - no id
- Tamaño, colores, etc.

Ejemplo:
```css
html {
    margin: 0;
}
a {
    text-decoration: none;
}
button {
    color: grey;
    border-radius: 2rem;
}
```

<br>

## Layout

Diseño o estructura de la página, estilos para las secciones principales:
- Header
- Footer
- Section
- Main
- Article
- etc.

Se pueden utilizar con id o clases.

Ejemplo:
```css
#footer {
    background-color: gray;
}
#footer .l-center {
    text-align: center;
}
```

<br>

## Modules
Fragmentos únicos que puede contener:
- Prefijo
- Elemento Secundario

Ejemplo:
```css
.section {
    background-color: gray;
}
.section--title {
    font-size: 1.2rem;
}
```

<br>

## State
Representa situaciones dinámicas:
- is-selected

Ejemplo:
```css
.is-selected {
    background-color: gray;
}
.is-visible {
    visibility: visible;
}
```

<br>

## Theme
Colores primarios, formas, bordes, sombras y demás. Se repiten en todo el sitio.

Ejemplo:
```css
.text-xs {
    font-size: 1.2rem;
}
.text-sm {
    font-size: 1.4rem;
}
.text-md {
    font-size: 1.6rem;
}
.font-lg {
    font-size: 1.8rem;
}
```