# Fundamentos de SASS
Hojas de estilo sintacticamente asombrosas, por sus siglas en inglés (Syntactically Awesome Style Sheets) es un preprocesador de CSS que se utiliza para trabajar los estilos de proyectos web agregando funcionalidades que no cuenta css. Esta basado en el lenguaje de programación Ruby.

<br>

## ¿Qué aprenderemos?
- **Variables**: Las variables nos servirán para almacenar datos. Como por ejemplo los colores.
- **Crear mixins**: Son parecidos a las funciones, ya que reciben parámetros de entrada.
- **Selectores anidados**: Nos permite escribir mejor código y mas entendible.
- **Herencia**: Nos permite compartir propiedades entre selectores.

<br>

## Tipos de archivos y sintaxis.
Sass es flexible y compatible con el CSS tradicional, por lo tanto cuando trabajemos con él, tenemos la opción de utilizar dos diferentes extensiones:

- **.sass**: Utiliza una sintaxis identada, quitando el uso de llaves `{ }` y punto y coma `;` tras cada declaración.
```ruby
$font-stack: Helvetica, sans-serif
$primary-color: #3333
body
    font: 100% $font-stack
    color: $primary-color
```
  <br>

- **.scss**: Utiliza sintaxis tradicional.
```css
$font-stack: Helvetica, sans-serif;
$primary-color: #3333;
body {
font: 100% $font-stack;
color: $primary-color;
}
```

