# Formularios

Son la primera forma de interacción con los usuarios, con ellos se recopila información que necesitamos para realizar la tarea dada al sitio, ya sea que tengamos una tienda virtual, una sitio de reserva de hoteles o viajes, suscripciones, etc.

Los formularios pueden ser tediosos, si no logramos optimizar su uso, puede ser un factor determinante en la captación de usuarios, ya que si son demasiado complejos puden generar una mala experiencia para estos mísmos.

Hay una frase que versa:

> "El mejor formulario es el que no existe"

Pero eso a veces es imposible, para poder recopilar cierta información hay que utilizarlos.

## Optimización

Para comenzar a hacer formularios de manera optima, comenzaremos viendo cual no sería una buena forma de hacerlos:

**Así no hay que hacerlo**
```html
<div>
        <input type="text" >
</div>
```

Esto ya no es una buena práctica, la forma correcta de hacerlo es con la etiqueta form, para darle semantica:

**Asi hay que hacerlo**
```html
<form>
        <label for="">
                <span></span>
                <input type="text">
        </label>
</form>
```

<br>

En la pantalla los dos se ven exactamente igual, pero a la hora de utilizar la semantica para el acomodo del sitio se nos dificultará hacerlo

<br>

![]()

<br>

```html
 <form action="">
        <label for="nombre"> 
            <span>¿Cuál es tu nombre?</span>
            <input type="text" id="nombre"> <!-- le ponemos atributo id el mismo que
            el four de label-->
        </label>
        <label for="inicio-platzi"> 
            <span>¿Qué dia iniciaste en platzi</span>
            <input type="date" id="inicio-platzi"> <!-- le ponemos atributo id el mismo que
            el four de label-->
        </label>
        <label for="horario"> 
            <span>¿En que Horario estudias?</span>
            <input type="time" id="horario"> <!-- le ponemos atributo id el mismo que
            el four de label-->
        </label>
    </form>
```

**Placeholder**: Pone un ejemplo de lo que el usuario debe de ingresar en el input.

```html
<label for="nombre"> 
            <span>¿Cuál es tu nombre?</span>
            <input type="text" id="nombre" placeholder="Nombre"> <!-- le ponemos atributo id el mismo que
            el four de label-->
</label>
```

![]()

<br>

**Formulario para check in de viaje**

Esto es un ejemplo de optimización en el que de cuatro formularios lo reducimos a un formulario.

```html
<form action="">
        <label for="hora">
            <span>Hora</span>
            <input type="time" id="hora" name="hola">
        </label>
        <label for="dia">
            <span>Día</span>
            <input type="date" id="dia" name="dia">
        </label>
        <label for="semana">
            <span>Semana</span>
            <input type="week" id="semana" name="semana">
        </label>
        <label for="mes">
            <span>Mes</span>
            <input type="month" id="mes" name="mes">
        </label>
        <input type="submit">
    </form>
```

<br>

```html
<form action="">
        <label for="calendario">
            <span>Calendario</span>
            <input type="datetime-local" id="calendario" name="calendario">
        </label>
    </form>
```