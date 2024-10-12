# Responsive Design
Es la manera de hacer que las paginas de un sitio web se reendericen bien en cualquier tipo de dispositivo, y que se adapte a cualquier tamaño de pantalla. Con el surgimiento de gran variedad de dispositivos que se conectan a la web y que cuenta n con distintos tamaños de pantalla, la industria del desarrollo web se vió en la necesidad de adaptar los sitios y aplicaciones a estos dispositivos.

<br>

## Mobile First/Only
Hay diferentes estrategias para aplicar el responsive design, pero la que se recomienda más por el momento en el que estamos ahora, es el mobile first o mobile only, en el que se comienza diseñando para dispositivos móviles mas pequeños y de menor capacidad, y se va escalando el sitio hacia pantallas mas grthemeandes, dígase smartphones de gama alta y pantallas mas grandes, tablets, laptops desde su variedad de tamaños desde 13 hasta 17 o 18 pulgadas, y por ultimo desktop en donde varía más el tamaño.

Esta estrategia, es mejor en muchos, sentidos, tanto para el usuario, porque el rendimiento es mejor, como para el desarrollador, por que es mas fácil escalar el sitio desde pantallas chicas a mas grandes.

<br>

## Media queries
Los break points son partes del código de css y html en los que se hace un cambio en el estilo, posición o display para adaptarse a la pantalla del dispositivo en el que se esta renderizando la pagina web.

Estos break points se aplican por medio de la regla media query `@media`. 
```css
@media (min-width: 480px) {
    ...
}
@media (min-width: 768px) {
    ...
}
@media (min-width: 1024px) {
    ...
}
 ```

<br>

La forma de trabajar con media queries, es agregando hasta el final del fichero css las reglas correspondientes a cada viewport, comenzando por el código para los viewport mas pequeños hasta los mas grandes, como lo vemos en el código de aca arriba.

También se pueden aplicar desde el head de html, llamándolo con el tag link, teniendo en ficheros css separados el código para cada viewport.
```html
<link href="style.css" rel="stylesheet">
<link href="tablet.css" rel="stylesheet" media="screen and (min-width: 768px)">
```
