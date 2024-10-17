# Mixins

Permiten definir estilos que se pueden reutilizar en toda su hoja de estilos y facilitan evitar el uso de clases no semanticas.

Se declara con la regla `@mixin`, seguido del nombre que queremos asignar y se invoca con `@include`, seguido del nombre del mixin
```scss
@mixin horizontal-list {
    li {
        display: inline-block;
        margin {
            left: -2px;
            right: 2em;
        }
    }
}

nav ul {
    @include horizontal-list;
}
```

### Argumentos con Mixins

Un argumento es el nombre de una variable que está separada por una coma.  
La utilidad de los mixins no sería tal si no tuvieran la capacidad de recibir argumentos.
```scss
@mixin circle2 ($width,$height,$color) {
    width: $width;
    height: $height;
    background: $color;
}
```

<br>
<br>

Un ejemplo en la eco-store:

```scss
nav {
    display: flex;
    justify-content: space-between;
    width: auto;
    color: $primary-text-color;
    padding: 15px 45px;
}
```

```scss
@mixin flexCenter($direction,$content,$align){
    display: flex;
    flex-direction: $direciton;
    justify-content: $content;
    align-items: $align;
}


nav {
    @include flexCenter(row, space-between, center);
    width: auto;
    color: $primary-text-color;
    padding: 15px 45px;
}
```