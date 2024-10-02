# Maquetación de HTML

- **HTML**: Hyper Text Mark Language (Lenguaje de Marcado de Hiper Texto)
- **CSS**: Cascading Style Sheet (Hoja de Estilo en Cascada)

## Motores de renderizado.

Cada navegador tiene un motor que tranforma el HTML y el CSS de una forma que lo puedan entender y que lo visulaizan en la pantalla en forma de pixeles.

| Navegador | Motor |
| :---: | :---: |
| Chrome | Blink |
| Edge | Edge HTML |
| Safari | Webkit |
| Firefox | Gecko |

No importa que navegador sea o el motor que tenga, estos hacen lo mismo, y son 5 pasos:

1. Transforma el HTML en objetos que entienede, denominado como **DOM** (Document Object Model), el cual es el mismo html pero entendible para el navegador. 
2. Calcula el estilo corespondiente a cada nodo o elementos de **DOM**.
3. Calcula las dimensiones de cada nodo y donde va en la pantalla.
4. Pinta las diferentes cajas.
5. Toma las capas y las convierte en una imagen para mostrar en pantalla.

## Anatomía de un elemento y de HTML

La siguiente sintaxis es con la que se conformara toda la estructura de html, cada elemento tiene una etiqueta de cierre `<h1>` y otra de cierre `</h1>` y dentro de las etiqueteas de apertura y de cierre vamos a tener lo que nosotros necesitemos dependiendo de la etiqueta. En el siguiente ejemplo mostramos la etiqueta de `header 1` que es un titulo.

```html
<h1>DONSILVER</h1>
```

 A los elementos es posible agregarles atributos a través de las etiquetas, que nos serán de mucha ayuda que veremos mas adelante. En este caso en particular el atributo `class` que es el más usado, el cual nos permitirá comunicarnos con CSS. Estos atributos variarán dependiendo del tag o etiqueta que estemos escribiendo en html.

 ```html
 <h1 class="title"> DONSILVER </h1>
 ```

 La sintaxis de los atributos la mayoria de las veces es `atributo` seguido de `igual (=)` y entre `comillas dobles` el `valor` del atributo.

 También tenemos una caracteristica que es denominada **anidamiento**, en donde dentro de cada elemento puede ser introducidos mas elementos, y dentro de esos elementos mas elementos.

 ```html
 <section>
    <h1>DONSILVER</h1>
    <p> Tiene un ideal</p>
    <ul>
        <li>Increíble</li>
        <li>Maravilloso</li>
        <li>Inigualable</li>
    </ul>
</section>
```

**Elementos vacíos**
No todas las etiquetas tienen apertura y cierre, como en el caso de la etiqueta `<img>` la cual incrusta una imagen, pero no va directamente en el documento, sino que se le llama a través del atributo `src` (source) que practicamente es referenciar la ruta en la que se encuentra la imagen, sea local o en internet, por eso es que no es necesario agregar una etiqueta de cierre.

```html
<img src="imagen.jpg" alt="imagen">
```

## Estructura principal de el documento HTML

Esta es la estructura principal y básica que tiene un documento html, el cual es importante saber saber que es cada una de las etiquetas.

- La etiqueta `<DOCTYPE html>` nos indica que estaremos trabajando con el tipo de documento html.
- La etiqueta `<html>` que será en donde estará todo nuestro código.
- La etiqueta `<head>` nos permitirá escribir datos o configuraciones referentes a nuestro sitio, como el favicon, el título, enlaces, tipografia externa etc
- La etiqueta `<body>` en donde pondremos toda la estructura que será vista por los usuarios en el navegador

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        ...
        <title>Mi portafolio</title>
    </head>
    <body>
        <header>...</header>
        <nav>...</nav>
        <section>...</section>
        <footer>...</footer>
    </body>
</html>
```

## Html Semántico.

Nos indica como utilizar propiedades adecuadas para los textos, parrafos, imagenes, secciones, etc.  
El div queda relegado a solo ser un wrapper o envolvente para ciertas ocaciones.

![estructura](.imagenes/estructura.png)

## Etiquetas más utilizadas

`<div>`
| LAYOUT | TEXTOS | FORMULARIOS | ENLACES | IMÁGENES Y VIDEO | LISTAS |
| :---: | :---: | :---: | :---: | :---: | :---: |
| header | h1 ... h6 | form | a | img | ul |
| nav | p | input |  | svg | li |
| section | span | label |  | iframe | ol |
| article |   | button |  | video | |
| aside |  |  |  | |
| footer |  |  |  | |

### Ejemplo de la maquetación de HTML

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <section>
        <h1>Don Silver</h1>
        <p>Tiene un Ideal</p>
        <ul>
            <li>Maravilloso</li>
            <li>Increible</li>
            <li>Asombroso</li>
        </ul>
    </section>
</body>
</html>
```

<br>

Así se muestra en el navegador:

![maq-html](.imagenes/maq-html.png)

<br>
<br>

Otro ejemplo con un poco mas de etiquetas:

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <nav>
        <ul>
            <li>about us</li>
            <li>contact us</li>
        </ul>
    </nav>
    <section>
        <div>
            <img src="https://upload.wikimedia.org/wikipedia/commons/e/ee/Old_women_in_Vietnam.jpg" alt="vietnamese Woman">
        </div>
        <div>
            <h1>
                Vietnam
            </h1>
            <p>Vietnam is awsome</p>
        </div>
    </section>
    <form action="">
        <label for="name">Name</label>
        <input type="text" id="name">
    </form>
    <a href="https://platzi.com/ruta/especialista-ciberseguridad/?school=_escuela_ciberseguridad_">Ciberseguridad</a>
</body>
</html>
```

En el navegador se vería así:

![maq-etiquetas](.imagenes/maq-etiquetas.png)

## Enlaces de referencia

Aquí abajo hay enlaces de referencia para la comprensión de todas las etiquetas disponibles en html.

[Referencia HTML - Una guía gratis de todos los elementos y atributos de HTML.](https://htmlreference.io/)  
[Codigo etiquetas.html del Curso Frontend Developer de Platzi](https://github.com/platzi/curso-frontend-developer/blob/5108689bdb6599cc92bd9595db28784f9be48704/curso-1/etiquetas.html)  
[44 etiquetas que debes conocer de HTML](https://platzi.com/blog/etiquetas-html-debes-conocer/)