# Metodología OOCSS

## Principios
- Separar la estructura del diseño.
- Separar el contenedor del contenido.

Para lograr esto necesitamos saber cuales son las propiedades de cada una de estas divisiones.

Tenemos algunos ejemplos a continuación:

### Propiedades de Estructura
- Height
- Width
- Margin
- Padding

### Propiedades de apariencia
- Color
- Font

## Separando la estructura del diseño

Tenemos el siguiente ejemplo sencillo para hacer una demostración de como podriamos aplicar esta metodología:

Tenemos este código sin la separación:
```css
.card-gray {
    width: 10rem;
    height: 15rem;
    background-color: grey;
}

.card-white {
    width: 10rem;
    height: 15rem;
    background-color: white;
}
```
```html
<div class="card-grey"></div>
<div class="card-white"></div>
```

Con la separación se vería así:
```css
.card {
    width: 10rem;
    height: 15rem;    
}
.grey {
    background-color: grey;
}
.white {
    background-color: white;
}
```
```html
<div class="card grey"></div>
<div class="card white"></div>
```
