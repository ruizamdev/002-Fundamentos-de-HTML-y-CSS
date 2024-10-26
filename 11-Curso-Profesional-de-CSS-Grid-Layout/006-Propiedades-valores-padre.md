# Propiedades y valores para el elemento padre

## Display: grid e inline-grid

la definición del vocablo en inglés *display* es:

Verbo; desplegar, colocar a la vista, exhibir, lucir, mostrar, presentar.

En el contexto de CSS, display define el tipo de visualización de un elemento, y puede tener dos valores, inner y outter

<br>

**¿Cuál es la diferencia entre grid e inline-grid?**

Si declaráramos la propiedad display a dos elementos, por ejemplo div (que por defecto es de tipo block), uno con valor block y otro con valor grid, al revisarlo en el navegador veríamos que no cambia, se verían exactamente igual.

```html
<div class="block">
    Block
</div>
<div class="grid">
    Grid
</div>
```
```css
body {
  font-family: 'Roboto', sans-serif;
  font-weight: bolder;
  padding: 0;
  margin: 0;
}
div {
  font-size: 45px;
  width: 100%;
  height: 60px;
  padding: 20px;
  margin: 10px;
}
.block {
  background-color: #F6FCDF;
  color: #31511E;
  display: block;
}
.grid {
  background-color: #31511E;
  color: #F6FCDF;
  display: grid;
}
```

<br>

![block-grid](./assets/images/block-grid.png)

Esto es debido a que la propiedad `display: grid` tiene también y por defecto, la propiedad block, prácticamente es como si nosotros lo declaráramos así: `display: block-grid`

<br>

Los valores block e inline nos van a definer dos cosas: 
- **El valor externo de visualización**: El cómo se comporta el elemento en el diseño junto con otros elementos.
- **El valor interno de visualización**: Es cómo se comportan los hijos directos de ese elemento.

Es decir que, al aplicarle un estilo con la propiedad display, con el valor block-grid a un elemento container, lo que le estamos diciendo es que de manera externa, se comportará como un elemento tipo block, y de manera interna, sus hijos directos tendrán un comportamiento de visualización grid.

Entonces si tenemos que block-grid (o simplemente grid), ajusta la visualización de un elemento en tipo bloque podemos deducir que los elementos declarados con `display: inline-grid` se comportarán como un elemento inline, y en el ejemplo anterior, si cambiamos el valor de display por inline e inline-grid respectivamente obtendremos esto:

```css
.block {
  display: inline;
}
.grid {
  display: inline-grid;
}
```

![inline-grid](./assets/images/inline-grid.png)

<br>

Aquí debemos recalcar el concepto de flujo normal del documento, el cual hace referencia a que todos los elementos de un documento html, por defecto ya traen un tipo de display, ésto sin haberle agregado un estilo con css previamente.

En CSS2 teníamos los siguientes tipos de display:

- inline
- block
- inline-block
- list-item
- none
- table
- inline-table

Entre muchas otras, pero estas son las más importantes

<br>

Para CSS3 se agregaron las de grid y flexbox:
- flex
- inline-flex
- grid
- inline-grid

<br>
<br>

## Filas, columnas y espaciado

Para crear las filas y columnas tenemos varias formas de hacerlo, podemos comenzar con lo mas simple:

<br>

Tenemos un container con 25 items.
```html
<div class="container">
  <div class="item"></div>
  .
  .
  .
  <div class="item"></div> 
</div>
```

Y aplicamos los siguientes estilos
```css
.container {
  display: grid;
  grid-template-rows: 50px 50px 50px 50px 50px;
  grid-template-columns: 50px 50px 50px 50px 50px;
  width: max-content;
  background-color: #F3F3E0;
}

.item {
  width: 50px;
  height:50px;
  border: 1px solid #000000;
}
```

<br>

![grid-template](./assets/images/grid-template.png)

<br>

Tendríamos el mismo efecto y acortaríamos un poco y aplicaríamos el paradigma de diseño DRY con el valor `repeat()`:

```css
.container {
  display: grid;
  grid-template-rows: repeat(5, 50px); /* el primer valor es la cantidad de veces que queremos que se repita, y el segundo la medida. */
  grid-template-columns: repeat(5, 50px);
}
```

Y se puede hacer aún más simple solamente con `grid-template`

```css
.container {
    display:grid;
    grid-template: repeat(5, 20px) / repeat(5,20px); /* El primer valor serian las filas y el segundo las columnas */
}
```

<br>

Para colocar espacios entre filas y columnas usamos `column-gap` y `row-gap` o sus formas mas largas que se utilizaban anteriormente `grid-column-gap` y `grid-row-gap`, cualquiera de las dos es válida.

```css
.container1 {
    grid-column-gap: 7px;
    grid-row-gap: 5px;
}
.container2 {
    column-gap: 7px;
    row-gap: 5px;
}
```

O podemos unificar las dos anteriores con `gap`, podemos agregar el espacio uniformemente a filas y columnas o colocando los dos valores.
```css
.container1 {
    gap: 5px;
}
.container2 {
    gap: 5px 7px; /* primer valor: filas, segundo: columnas */
}
```

<br>

Una forma más compleja de generar un layout, pero bastante fácil de hacer seria con `grid-template-areas`

```html
<div class="container">
<header>
  <p>Esto es el header</p>
</header>
<main>
  <p>Esto es un main</p>
</main>
<aside>
  <p>Esto es un aside</p>
</aside>
<footer>
  <p>Esto es un footer</p>
</footer>
</div>
```

```css
body {
  box-sizing: border-box;
}
.container {
  display: grid;
  grid-template: repeat(5, 50px) / repeat(5,50px);
  grid-template-areas:
    "header header header header header"
    "main   main   main   main     aside"
    "main   main   main   main     aside"
    "main   main   main   main     aside"
    "footer footer footer footer footer";
  gap: 20px;
  text-align: center;
  font-size: 18px;
  font-weight: bold;
  font-family: 'Roboto', sans-serif;
}

header {
  grid-area: header;
  width: 100%;
  height: 100%;
  background-color: #608BC1;
  border: 5px solid #133E87;
}
main {
  grid-area: main;
  width: 100%;
  height: 100%;
  background-color: #F3F3E0;
  border: 5px solid #EAD8B1;
}

aside {
  grid-area: aside;
  width: 100%;
  height: 100%;
  background-color: #D6EFD8;
  border: 5px solid #1A5319;
}

footer {
  grid-area: footer;
  width: 100%;
  height: 100%;
  background-color: #F4D9D0;
  border: 5px solid #921A40;
}
```

Se crean nombres para cada una de las celdas para después asignar las areas a los elementos con `grid-area`, dando ésto como resultado:

![grid-template-areas](./assets/images/grid-template-areas.png)

<br>
<br>

## Alineamiento en el elemento contenedor

Es posible alinear los elementos hijos de un contenedor aplicando reglas de estilo al mismo contenedor, esto se hace de manera grupal, es decir que al aplicar las reglas, éstas se aplicaran por igual a todos los hijos directos del contenedor sin excepción, no es posible aplicar reglas a elementos hijos de manera individual, al menos no desde el contenedor.

Para este propósito tenemos dos grupos de propiedades:
| 1 | 2 |
| :---: | :---: |
| justify-items | justify-content |
| align-items | align-content |
| place-items | place-content |

Analizaremos las partes que comparten los dos grupos:

- **justify**: alinea los elementos de manera "horizontal", que estrictamente, y ya visto el tema del writing mode y la dirección de escritura, debemos decir que la alineación es inline (inline axis - row axis) y tiene un principio y un final, de nuevo, dependiendo del write direction sería de un lado hacia otro o de arriba a abajo o viceversa.

```css
.container {
  justify-content: start | end | center | stretch | space-around | space-between | space-evenly;
  justify-items: start | end | center | stretch;
}
```

<br>

- **align**: alinea los elementos de manera "vertical" o mejor dicho en block (block axis - column axis).

```css
.container {
  align-content: start | end | center | stretch | space-around | space-between | space-evenly;
  align-items: start | end | center | stretch;
}
```

<br>

- **place**: alinea los elementos inline y block en una sola línea.

```css
.container {
  place-items: <align-items> / <justify-items>;
}
```



Cada grupo significa que alineara algo diferente:

- **items**: alinea los elementos que estan por dentro de la Grid.
- **content**: alinea la grid misma.

<br>
<br>

## Generación automática de tracks

Este tema en particular, nos ayuda como frontend developers, ya que hay ocasiones en las que no tenemos control del contenido que se genera en los proyectos, son situaciones en las que el contenido se genera directamente del backend, y no es posible estar ajustando el layout al nuevo contenido que se genera, para este propósito es mejor que el layout se genere automáticamente y no es necesario establecer la cantidad de filas al momento de crear el layout, esto se hace de manera **implícita**. utilizando `grid-auto-columns` y `grid-auto-rows`


Para demostrar esto primero veremos la manera **explícita** de hacerlo:

```html
<div class="container">
  <div class="item item-a"></div>
  <div class="item item-b"></div>
</div>
```
```css
body {
  box-sizing: border-box;
}
.container {
  display: grid;
  grid-template-columns: 160px;
  grid-template-rows: 190px 190px;
  gap: 15px;
  width: 650px;
  padding: 20px;
  border: 5px solid #000000;
}

.item {
  width: 150px;
  height: 185px;
  border-radius: 10px;
}

.item-a {
  background-color: #73EC8B;
  border: 3px solid #059212;
  grid-column: 1 / 2;
  grid-row:  1 / 2;
}

.item-b {
  background-color: #D91656;
  border: 3px solid #5D0E41;
  grid-column: 1 / 2;
  grid-row: 2 / 3;
}
```

![explicit](./assets/images/explicit.png)

<br>

La manera **implícita** seria esta:

```html
<div class="container">
  <div class="item item-a"></div>
  <div class="item item-b"></div>
  <div class="item item-c"></div>
</div>
```
```css
body {
  box-sizing: border-box;
}
.container {
  display: grid;
  grid-auto-columns: 160px;
  grid-template-rows: 190px 190px;
  gap: 15px;
  width: 650px;
  padding: 20px;
  border: 5px solid #000000;
}

.item {
  width: 150px;
  height: 185px;
  border-radius: 10px;
}

.item-a {
  background-color: #73EC8B;
  border: 3px solid #059212;
  grid-column: 1 / 2;
  grid-row:  1 / 2;
}

.item-b {
  background-color: #D91656;
  border: 3px solid #5D0E41;
  grid-column: 1 / 2;
  grid-row: 2 / 3;
}

.item-c {
  background-color: #F9E400;
  border: 3px solid #FF8400;
  grid-column: 3 / 4;
  grid-row: 2 / 3;
}
```

![implicit](./assets/images/implicit.png)