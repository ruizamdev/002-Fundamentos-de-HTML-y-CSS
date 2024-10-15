# Fundamentos de Sass
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

- **.Sass**: Utiliza una sintaxis identada, quitando el uso de llaves `{ }` y punto y coma `;` tras cada declaración.
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

<br>

## Anatomía de un proyecto en Sass
Para hacer uso de Sass dentro de nuestro proyecto, tenemos que tener en cuenta 3 puntos importantes que forman parte del proceso de compilado.

- Input file
- Output file
- Los comandos para ejecutar y compilar Sass

### Input file
El archivo de entrada es donde vamos a escribir nuestrso estilos haciendo uso de la sintaxis de sass, incluyendo la extension .scss en el nombre del archivo.

### Output file
El archivo de salida es donde se encontraran los estilos finales escritos en CSS nativo, que proviene del archivo de entrada.

> **NOTA IMPROTANTE**: Jamas se debe de editar directamen el archivo de salida.

Ejemplo de estructura del proyecto de sass:

my-first-sass-proyect/  
|---index.html  
|----css  
| &nbsp;  &nbsp; |----main.css &nbsp; &nbsp; &nbsp; <--- Archivo de salida  
|----scss  
 &nbsp; &nbsp; &nbsp; &nbsp;|----main.scss &nbsp; &nbsp; &nbsp; <--- Archivo de entrada  

## Tipos de instalación
- Instalación global en el sistema operativo
- Haciendo uso de Node.js
- Dart Sass
- Live Sass Compiler en VS Code (Utilizaremos esta)

<br>

### Instalación en VS Code
Buscamos e instalamos estas extensiones:

- Sass (oficial)
- Live Sass Compiler
- Live Server
