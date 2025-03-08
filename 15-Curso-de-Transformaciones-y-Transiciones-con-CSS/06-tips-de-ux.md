# Tips de UX

## Movimiento impulsado por la acción

En una transición y transformación de un elemento al hacer _hover_ podemos des-sincronizar los tiempos de transformación. Tenemos este ejemplo:

```html
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>UX Tips - Movimiento impulsado por la acción</title>
  <style>
    div {
      background-color: plum;
      width: 100px;
      height: 100px;
      border-radius: 50%;
      transition: transform 1.5s linear;
    }
    div:hover {
      transform: translateX(200px);
      transition: transform 1s linear;
    }
  </style>
</head>
<body>
  <div></div>
</body>
```
Se puede jugar con estos tiempos para darle una sensación más _orgánica_.

## Tiempo de espera

En elementos secundarios que aparecen al hacer hover en un elemento principal, y que son seleccionables o interactivos podemos darle un tiempo de espera para que el usuario pueda llegar con el cursor hasta ese elemento. Tal es el caso de las barras de navegación. Tenemos este ejemplo:

```html
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>UX Tips - Tiempo de espera</title>
  <style>
    body {
      margin: 0;
    }
    ul {
      list-style: none;
    }
    a {
      text-decoration: none;
    }
    .nav {
      display: flex;
      gap: 20px;
    }
    .nav li ul {
      position: absolute;
      display: block;
      opacity: 0;
      transition: opacity 400ms;
      transition-delay: 300ms;
    }
    .nav li:hover > ul {
      opacity: 1;
      transition: opacity 400ms;
      transition-delay: 300ms;
    }
    .nav li ul li {
      position: relative;
    }
    .nav li ul li {
      right: -80px;
    }
  </style>
</head>
<body>
  <ul class="nav">
    <li><a href="#">Mujer</a>
      <ul>
        <li><a href="#">Camisetas</a></li>
        <li><a href="#">Pantalones</a></li>
        <li><a href="#">Shorts</a>
          <ul>
            <li><a href="#">Cortos</a></li>
            <li><a href="#">Largos</a></li>
            <li><a href="#">Transparentes</a></li>
          </ul>
        </li>
      </ul>
    </li>
    <li><a href="#">Hombre</a></li>
    <li><a href="#">Niñas/os</a></li>
  </ul>
</body>
```

## Problemas de parpadeo

Hay veces que al hacer hover en un elemento puede presentar un parpadeo, esto sucede porque se le esta haciendo el hover al elemento en sí, esto lo podemos resolver metiendo el objeto a un contenedor, aplicar el hover a ese contenedor y la transformación al objeto, de la siguiente manera:

```html
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>UX Tips - Problemas de parpadeo</title>
  <style>
    div {
      border-radius: 50%;
      width: 100px;
      height: 100px;
    }
    .container:hover .item {
      transform: translateY(-15px);

    }
    .item {
      background-color: palegoldenrod;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="item"></div>
  </div>
</body>
```