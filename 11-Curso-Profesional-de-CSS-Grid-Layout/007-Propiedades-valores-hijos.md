# Propiedades y valores para los elementos hijos.

## Ubicación

A diferencia de las propiedades aplicadas al container, en las que solo es posible ubicar  los elementos hijos en conjunto, las propiedades aplicadas a estos directamente nos permitirán ajustarlos individualmente.

<br>

### grid-column-[start | end], grid-column, grid-row-[start | end], grid-row.

Estas propiedades ya las hemos visto, el valor declarado son las lineas donde queremos que comience y termine un elemento

```css
.item-one {
    grid-column-start: 1;
    grid-column-end: 2;
    grid-row-start: 1;
    grid-row-end: 2;
}

.item-two {
    grid-column: 2 / 3;
    grid-row: 2 / 3;
}
```

<br>

### grid-template-areas

Esta propiedad prácticamente ya la hemos estudiado:

```css
.container {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    grid-template-areas:
    "card-1 card-2"
    "card-1 card-3";
    width: 60px;
}

.item-one {
    grid-area: card-1;
}
.item-two {
    grid-area: card-2;
}
.item-three {
    grid-area: card-3;
}
```

<br>
<br>

## Alineamiento

### justify-self, align-self y place-self
Con los conceptos de justify, align y place, ya podemos darnos una idea de como funcionan en los elementos hijos.

```css
.item {
    [justify | align]-self: start | center | end | stretch;
}
```