# Control de Alineamiento

## Tecnicas de alineamiento antes de CSS Grid: 

### 1. margin

```css
/* Individual margin properties */

p {
    margin-top: 10px;
    margin-right: 10px;
    margin-bottom: 10px;
    margin-left: 10px;
}

/* Shorthand property */

p {
    margin: 10px 10px 10px 10px; /* top, right, bottom and left respectively */
}
```

<br>

Ejemplo:

```html
<div class="wrapper">
  <div class="container">
    <div class="element1">top left</div>
  </div>

  <div class="container">
    <div class="element2">center left</div>
  </div>

  <div class="container">
    <div class="element3">bottom left</div>
  </div>

  <div class="container">
    <div class="element4">top center</div>
  </div>

  <div class="container">
    <div class="element5">center center</div>
  </div>

  <div class="container">
    <div class="element6">bottom center</div>
  </div>
  
  <div class="container">
    <div class="element7">top right</div>
  </div>
  
  <div class="container">
    <div class="element8">center right</div>
  </div>

  <div class="container">
    <div class="element9">bottom right</div>
  </div>
</div>
```

```css
@import url('https://fonts.googleapis.com/css2?family=Lato&display=swap');

.wrapper {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  grid-gap: 5px;
  font-family: 'Lato', sans-serif;
  width: 550px;
}

.container {
  background: turquoise;
  width: 180px;
  height: 180px;
}

.element {
  width: 60px;
  height: 60px;
  text-align: center;
  padding-top: 10px;
  box-sizing: border-box;
}

.element1 {
  @extend .element;
  background: papayawhip;
  margin: 0; 
}

.element2 {
  @extend .element;
  background: papayawhip;
  margin: 60px 0;
}

.element3 {
  @extend .element;
  background: papayawhip;
  margin: 120px 0;
}

.element4 {
  @extend .element;
  background: pink;
  margin: 0 auto;
}

.element5 {
  @extend .element;
  background: pink;
  margin: 60px auto;
}

.element6 {
  @extend .element;
  background: pink;
  margin: 120px auto;
}

.element7 {
  @extend .element;
  background: lightcyan;
  margin: 0 0 0 auto;
}

.element8 {
  @extend .element;
  background: lightcyan;
  margin: 60px 0 0 auto;
}

.element9 {
  @extend .element;
  background: lightcyan;
  margin: 120px 0 0 auto;
}
```

![margin](./assets/images/margin.png)

<br>
<br>

### 2. line-height

#### text-align
```css
/* Alinea de manera horizontal */

text-align: left|right|center|justify|initial|inherit;

/* Alinea de manera vertical */

vertical-align: baseline|length|sub|super|top|text-top|middle|bottom|text-bottom|initial|inherit;

/* Controla los altos en los textos */

line-height: normal|number|length|initial|inherit;
```
