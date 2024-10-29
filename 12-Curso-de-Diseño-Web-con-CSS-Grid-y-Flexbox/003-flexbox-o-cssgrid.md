# ¿Flexbox o CSS Grid?

### Fexblox
Es un método que puede ayudar a distribuir el espacio entre los ítems de una interfaz y mejorar las capacidades de alineación.  
Una característica importante a tomar en cuenta es que es un sistema **unidireccional**, esto quiere decir que nos permitirá alinear de forma horizontal o vertical.

<br>

**Propiedades flexbox**
**Container** | **Items**
:---: | :---:
display | order
flex-direction | flex-grow
flex-wrap | flex-shrink
flex-flow | flex-basis
justify-content | flex
align-items | align-self
align-content |

<br>

### CSS Grid
Es un sistema de diseño que permite al autor alinear elementos en columnas y filas y es un sistema **bidireccional** que nos permite alinear horizontal y verticalmente.

<br>

**Propiedades CSS Grid**
**Container** | **Items**
:---: | :---: 
display | grid-column
grid-template | grid-row
gap | grid-area
justify-items | justify-self
align-items | align-self
justify-content | 
align-content |

<br>

## Similitudes entre Flexbox y CSS Grid

En general tenemos dos similitudes:

- Relaciones entre containers e items (padres e hijos directos)
- Ejes de alineamiento (inline y block)

<br>

**¿Se puede trabajar con flexbox y CSS Grid al mismo tiempo?**

Claro que sí, pero va a depender de lo que necesitemos, del diseño que tengamos y de lo que queramos.

Desde mi punto de vista, hasta ahora después de haber tomado varios cursos de la ruta de frontend, CSS Grid, es preferible para un layout bastante amplio y que contiene secciones que tendrán mas elementos dentro, y flexbox, para elementos mas específicos.