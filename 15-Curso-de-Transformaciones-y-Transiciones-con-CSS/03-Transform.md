# Transformaciones en 2D y 3D

**Propiedad Transform**: Con transform podemos hacer que los elementos modifiquen su tamaño o sus caracteristicas iniciales, que roten, se trasladen o escalen, entre otras.

**Transform Functions**

**Tipo** | **Trasladar** | **Escalar** | **Rotar** | **Inclinar** | **Matriz** | **Perspectiva**
:---: | :---: | :---: | :---: | :---: | :---: | :---:
**Múltiple** | translate() | scale() | rotate() | skew() | matrix() | perspective()
**Eje X** | translateX() | scaleX() | rotateX() | skewX() |  |
**Eje Y** | translateY() | scaleY() | rotateY() | skewY() |  |
**Eje Z** | translateZ() | scaleZ() | rotateZ() | skewZ() |  |
**3D** | translate3d() | scale3d() | rotate3d() |  | matrix3d() |

## Transform



### Transform translate

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <style>
    .shadow {
      width: 100px;
      height: 100px;
      background: lightgrey;
      border-radius: 50%;
    }
    .circle {
      width: 100px;
      height: 100px;
      background: rgb(2,0,36);
      background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(75,158,75,1) 49%, rgba(0,212,255,1) 100%);
      border-radius: 50%;
    }
    .circle:hover {
      transform: translate(20px, 20px)
    }
  </style>
</head>
<body>
  <div class="shadow">
    <div class="circle"></div>
  </div>
</body>
</html>
```

### Transform rotate, scale, skew y matrix

#### scale()

Escalar, cambiar el tamaño, hacer más grande o más pequeño de lo que es un elemento.

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <style>
    .circle {
      width: 100px;
      height: 100px;
      border-radius: 50%;
      background: rgb(34,193,195);
background: linear-gradient(0deg, rgba(34,193,195,1) 0%, rgba(253,187,45,1) 100%);
    }
    .circle:hover {
      transform: scale(1.2);
    }
  </style>
</head>
<body>
  <div class="circle"></div>
</body>
```

#### skew()

Cezgar, ladear, inclinar

```html

```

#### rotate()

Girar ciertos grados

#### matrix()

Matriz de movimiento

### Transform origin

### Transform style y perspective

### Backface visibility