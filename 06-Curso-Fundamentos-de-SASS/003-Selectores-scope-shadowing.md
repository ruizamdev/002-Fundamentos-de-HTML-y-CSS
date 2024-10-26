# Uso de selectores, Scope de variables y Shadowing

## Selectores
Un selector de CSS define sobre que elementos se aplicará un conjunto de reglas CSS.

- Clase
- Id
- Tip
- Atributo

<br>

## Scope de variables
Hace referencia al contexto en el que son declaradas las variables y donde es posible hacer uso de las mismas. Existen dos diferentes tipos de variables:

- **Locales**: Están declaradas dentro de un bloque entre llaves `{ }` y cualquier selector anidado puede acceder a las variables locales declaradas dentro del selector.
- **Globales**: Pof default, todas las variables que declaramos fuera de un selector son globales, esto significa que se pueden acceder a ellas en cualquier parte de nuestra hoja de estilos.

<br>

## Shadowing
Las variables locales y globales pueden tener los mismos nombres, ya que se encuentran en diferente nivel del scope.  
Esto puede ayudar a que no se llegue a modificar por error el valor de las variables globales.

<br>

### Flag !global 
En caso de querer modificar el valor global de una variable dentro del scope de una variable local, se hace uso de éste flag.
