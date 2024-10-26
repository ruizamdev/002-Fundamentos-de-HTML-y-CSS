# Sistemas de diseño, Assets y variables de CSS.

Veremos cual es la utilidad de tener un sistema de diseño, tendremos variables con CSS y cual es la utilidad de tenerlas, y vamos a colocar todos esos archivos assets en un lugar especifico al que podamos acceder y utilizarlos cuando se requiera.

Comenzamos el maquetado de diseño de acuerdo a lo que el departamento de Diseño nos ha especificado.

Comenzamos declarando las variables de colores:

```css
:root
    --white: #FFFFFF;
    --black: #000000;               
    --very-light-ping: #C7C7C7;
    --text-input-field: #F7F7F7;
    --hospital-green: #ACD9B2;
```

Agregamos las fuentes al body:

```html
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300..700&display=swap" rel="stylesheet">
<style>
    body {
        font-family: "Quicksand", sans-serif;
        font-optical-sizing: auto;
        font-weight: 500;
        font-style: normal;
        }
</style>
```

<br>
<br>

> Podemos tomar una guía de [Polaris](https://polaris.shopify.com/), un sistema de diseño creado por Shopify que proporciona un conjunto de componentes de UI reutilizables y pautas para crear interfaces de usuario consistentes, accesibles y visualmente agradables.

<br>
<br>




