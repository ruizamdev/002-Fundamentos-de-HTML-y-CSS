# Unidades de Medida

Existen dos parametros que tenemos que aprender:

- **Medidas Absolutas.**
- **Medidas Relativas**
  
  - Porcentaje `%`
  - Elemento `em`
  - Elemento Raíz `rem [root em]` 
  - Max width / Max height `maximo ancho / alto`
  - Min width / Min height `minimo ancho / alto`
  - Viewport Width `vw`
  - Viewport Height `vh`

<br>
<br>

## Medidas Absolutas

Estas medidas no cambian sin importar el tamaño de la pantalla en donde estemos viendo el proyecto, como los pixeles `px`
```css
p {
         font-size: 18px;
      }
```
```html
<main>
      <p>Soy un texto ejemplo para la clase</p>
   </main>
```(minimo ancho / alto)
  - Viewport Width (vw)
  - Viewport Height (vh)

<br>
<br>

## Medidas Absolutas

Estas medidas no cambian sin importar el tamaño de la pantalla en donde estemos viendo el proyecto, como los pixeles `px`
```css
p {
         font-size: 18px;
      }
```
```html
<main>
      <p>Soy un texto ejemplo para la clase</p>
   </main>
```
![px](./assets/images/px.gif)
  
<br>
<br>

## Medidas Relativas

Estas medidas si cambian con respecto al tamaño de pantalla

### Porcentaje `%`
```css
p {
         font-size: 50%;
      }
```
```html
<main>
      <p>Soy un texto ejemplo para la clase</p>
   </main>
```

<br>

El tamaño de la fuente es del 50% de 16px heradado por html, el cual es el tamaño predeterminado, ya que, recordemos, es el tamaño de fuente que nos aplica el navegador cuando nosotros no aplicamos un estilo.
![px](./assets/images/percentage.png)
  
<br>
<br>



![px](./assets/images/px.gif)
  
<br>
<br>

## Medidas Relativas

Estas medidas si cambian con respecto al tamaño de pantalla

### Porcentaje `%`
#### En una fuente
```css
p {
         font-size: 50%;
      }
```
```html
<main>
      <p>Soy un texto ejemplo para la clase</p>
   </main>
```
grid
<br>

El tamaño de la fuente es del 50% de 16px heradado por html, el cual es el tamaño predeterminado, ya que, recordemos, es el tamaño de fuente que nos aplica el navegador cuando nosotros no aplicamos un estilo.
![px](./assets/images/percentage.png)
  
<br>
<br>

#### En ancho y largo de un div

<br>

Aquí solo sería con widht al 100%:
```css
main {
         background-color: red;
         width: 100%;
         height: 200px;

      }
p {
         font-size: 50%;
      }
```
```html
<main>
      <p>Soy un texto ejemplo para la clase</p>
   </main>
```

<br>

![percentage1](./assets/images/percentage1.gif)

<br>

Aquí
```css
main {
         background-color: red;
         width: 100%;
         height: 200px;

      }
p {
         font-size: 50%;
      }
```
```html
<main>
      <p>Soy un texto ejemplo para la clase</p>
   </main>
```

<br>

