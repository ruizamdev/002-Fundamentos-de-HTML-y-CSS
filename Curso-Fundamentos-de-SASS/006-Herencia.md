# Herencia
Es un mecanismo mediante el cual un selector puede recibir estilos CSS que vienen de variables utilizadas previamente.

La directiva @extend de Sass nos permite organizar código y crear CSS más limpio

```scss
.error {
    border: 1px #f00;
    background-color: #fdd;

    &--serious {
        @extend .error;
        border-width: 3px;
    }
}
```