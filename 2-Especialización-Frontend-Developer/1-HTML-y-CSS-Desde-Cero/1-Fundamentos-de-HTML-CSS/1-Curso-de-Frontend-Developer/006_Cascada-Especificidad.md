## 5. Cascada y Especificidad

<br>

El orden en el que escribimos en CSS importa, ya que las declaraciones de estilo mediante los selectores se iran ejecutando como lo indica en el nombre (Cascade Style Sheet), es decir que se ejecutaran en cascada, en orden secuencial. desde la primera, luego la segunda, tercer, cuarta, etcetera, hasta llegar a la ultima, por lo que si repetimos selectores, estos se sobreescribirán por el ultimo selector ejecutado.

Los navegadores determinan qué reglas de CSS deben aplicarse a las etiquetas de HTML. El orden y el origen de la clasificación del CSS, intervienen en este proceso. Pero algunas veces los navegadores entran en conflicto porque no saben que regla aplicar en ciertos casos, por lo que el mismo archivo de CSS buscará una solución, asi es como éste tienen una manera de lidiar con estos conflictos denominada especificidad de los selectores, entre mayor especificidad mayor va a ser la probabilidad de que sus declaraciones se usen sobre las demás.

Para saber cual es más específico tenemos esta forma, en la que se le da un "valor" numérico a los selectores para poder tener una perspectiva de cual es mas especifico, y sería de la siguiente manera:

| Importancia | Selector |
| ---: | :--- |
| X 0 0 0 0 | !IMPORTANT | 
| X 0 0 0 | Estilos en línea |
| X 0 0 | #ID |
| x 0 | Clases, Atributos y Pseudoclases |
| x | Elementos y Pseudoelementos |
| 0 | Selector Universal |

<br>

En este ejemplo se hace la sumatoria de todos los selectores usados en una declaración de estilo, la primera línea resulta ser mas especifica que la segunda, por lo tanto la primera será considerada antes y será mas importante que la segunda.

<br>

---
**Más específico:** 

```css
#id h1::first-letter {}
```

| | |
---: | :---
 100 | #id 
1  | h1
1 | ::first-letter
102 | = total de la suma

<br>

---
**Menos específico:**

```css
p .sidemenu div:hover{}
```

| | |
---: | :--- 
1 | p 
10 | .sidemenu
1 | div
10 | :hover
22 | = total de la suma

<br>

---
<br>

Entonces tenemos que, a parte de ejecutar las declaraciones en cascada, CSS le dará prioridad a los selectores con mayor importancia.

En este ejemplo el color que prevalece es el rojo, ya que los selectores id tienen más importancia que las clases.
```html
<style>
    #id {
        color: red;
    }
    .class {
        color: blue;
    }
</style>
<body>
    <p class = "class" id = "id">El color de letra del selector mas importante o específico prevalecerá, en este caso es Rojo</p>
</body>
```

![esp.png](.imagenes/esp.png)

<br>

Aquí está un enlace que calcula la especificidad de una declaración de estilo de CSS

[CSS Specificity](https://specificity.keegan.st/)