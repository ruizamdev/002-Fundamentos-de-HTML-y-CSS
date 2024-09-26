# Maquetación CSS

## Anatomía de una declaración CSS

Se coloca el nombre del `selector`, entre llaves escribimos la `propiedad` seguido del `valor` y al final punto y coma `;`

En el ejemplo, `h1` es el **selector**, entre las llaves, `color` es la **propiedad** y `green` es el **valor** asignado a la propiedad.

```css
h1 {
    color: green;
}
```

## Selectores Básicos
|   |  |
| :---: | :---: |
| De tipo | div{...} |
| De clase | .elemento {...} |
| De ID | #id-del-elemento |
| De atributo | a [href="..."]{...} | 
| Universal | *{...} |

- **De tipo**: Se coloca el nombre de la `etiqueta`, y todos las etuiquetas de ese tipo serán modificadas.  
- **De clase**: Colocamos un punto `(.)` y el nombre del elemento `(clase)`, no s modificará toda aquella etiqueta con la misma clase.
- **De ID**: Se coloca un gato `(#)`(almohadilla, hashtag, numeral, etc. cada lugar lo nombra diferente), seguido del ID del elemento.
- **De atributo**: Haciendo alusión al atributo de alguna etiqueta.
- **Universal**: Se escribe con un asterisco `(*)` y modificará todo en el documento.

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

## Selectores combinados.
