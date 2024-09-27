## 2. Selectores Básicos

Existen varias formas de agregar estilo a los fichero html mediante los selectores de css, y son los siguientes:

|   |  |
| :---: | :---: |
| De tipo | div{...} |
| De clase | .elemento {...} |
| De ID | #id-del-elemento |
| De atributo | a [href="..."]{...} | 
| Universal | *{...} |

<br>

- **De tipo**: Se coloca el nombre de la `etiqueta`, y todos las etuiquetas de ese tipo serán modificadas en el fichero html.  
- **De clase**: Colocamos un punto `(.)` y el nombre del elemento `(clase)`, nos modificará toda aquella etiqueta con la misma clase.
- **De ID**: Se coloca un gato `(#)`(almohadilla, hashtag, numeral, etc. cada lugar lo nombra diferente), seguido del ID del elemento.
- **De atributo**: Haciendo alusión al atributo de alguna etiqueta.
- **Universal**: Se escribe con un asterisco `(*)` y modificará todo en el documento.

<br>

```css 
        *{                                  /* Selector Universal (*) */
            background: papayawhip;             
        }
        div {                               /* Selector de tipo */
            background: yellow;
        }
        .titulo {                           /* Selector de clase */
            color : orangered;
        }
        #titulo2 {                          /* Selector de iD */
            color: green;
        }
        a [href="https://platzi.com/ruta/especialista-ciberseguridad/?school=_escuela_ciberseguridad_"]{     
            color: pink;                    /* Selector de atributo */
        }
       
```

Aquí tenemos unos enlaces de referencia para la comprensión de los selectores y los códigos y nombres de colores de html  
[Códigos y nombres de colores](https://htmlcolorcodes.com/es/)  
[Código CSS de platzi de los selectores](https://github.com/platzi/curso-frontend-developer/blob/5108689bdb6599cc92bd9595db28784f9be48704/curso-1/selectores-2.html)

<br>

### Maquetación de selectores básicos:

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        div {
            background: yellow;
            ;
        }
        .titulo {
            color : orangered;
        }
        #titulo2 {
            color: green;
        }
        a [href="https://platzi.com/ruta/especialista-ciberseguridad/?school=_escuela_ciberseguridad_"]{
            color: pink;
        }
        * {
            background: papayawhip;
        }
    </style>
</head>
<body>
    <div class = "titulo">Hola</div> 
    <div id = "titulo2">Mundo!</div>
    <a href="https://platzi.com/ruta/especialista-ciberseguridad/?school=_escuela_ciberseguridad_">Ciberseguridad</a>
</body>
</html>
```

<br>

En el navegador se vería así:

![maq-sel1](.imagenes/maq-sel1.png)