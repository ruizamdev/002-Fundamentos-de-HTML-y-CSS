# Funciones especiales en Grid

- **minmax**: Nos ayuda a declarar el minimo y maximo para el ancho y alto de una celda.
- **repeat**: nos ayuda a repetir las medidas si las celdas deben ser iguales.

<br>

```css
.contenedor {
    border: 5px solid #e1bee7;
    background-color: #fff1ff;
    display: grid;
    grid-template-columns: minmax(30px, 300px) 200px minmax(60px, 250px);
    grid-template-rows: repeat(3, auto);
}
.item {
    border: 5px solid #00bcd4;
    font-size: 2rem;
}
```

<br>

![special-func](./assets/images/special-func.gif)