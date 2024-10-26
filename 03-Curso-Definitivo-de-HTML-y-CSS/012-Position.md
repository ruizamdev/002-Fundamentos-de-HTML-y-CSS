# Position

Es la forma en la que podemos posicionar los contenedores y etiquetas.  
Existen varios tipos de posicionamiento:

- Static (por defecto): con este valor los elemento permanecearan estaticos, no se moveran cuando hagamos un scroll, ni tendran ningun tipo de movimiento o redimencion.
- Absolute
- Relative
- Fixed
- Sticky

<br>

## Relative

Con esta propiedad podemos desprender al elemento de su posición estatica y manipularla con las valores `top`, `botton`, `left`, `right` y `z-index`.

```css
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
.parent {
    border: 2px black dotted;
    display: inline-block;
}
.box {
    display: inline-block;
    background-color: purple;
    width: 100px;
    height: 100px;
}
#two {
    background-color: yellowgreen;
    position: relative;
    top: 15px;
    right:5px;
}
```
```html
<div class="parent">
      <div class="box" id="one">1</div>
      <div class="box" id="two">2</div>
      <div class="box" id="three">3</div>
      <div class="box" id="four">4</div>
</div>
```

![relative](./assets/images/relative.png)