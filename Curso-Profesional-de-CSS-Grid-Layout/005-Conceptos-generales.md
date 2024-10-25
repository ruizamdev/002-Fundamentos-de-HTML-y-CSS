# Conceptos generales para comenzar a trabajar con CSS Grid.

Para empezar a trabajar con Grid es necesario tener muy presente las relaciones que existen entre Padre e hijos.

Grid es crear una rejilla padre, denominada tambien contenedor (container) que tenga filas y columnas, las cuales, a su vez crean celdas que son consideradas como los hijos de ese contenedor, llamados también objetos (items), los hijos también pueden convertirse en padres al alojar items en su interior.

```html
<div class="container">
    <div class="item sub-container">
        <div class="sub-item"></div>
        <div class="sub-item"></div>
    </div>
    <div class="item"></div>
    <div class="item"></div>
</div>
```