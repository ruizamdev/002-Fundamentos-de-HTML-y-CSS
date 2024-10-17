# Funciones
Las funciones permiten definir operaciones complejas en valores de Sass.  
Las funciones se definen usando la regla `@function`

Sass como preprocesador tiene una gran cantidad de funciones. algunos de los ejemplos son :

1. RGB
2. HSL
3. Opacidad
4. Strings
5. Números

<br>

## Operaciones
Sass tambien es compatible con una gran cantidad de operadore útiles para trabaja con diferentes valores. Estos incluyen los operadores matemáticos estandar y operadores para otros tipos.

### Jerarquía

1. Los operadores unarios `not`, mas `+` y menos `-`.
2. Operadores de multiplicación `*`, división `/` y residuo `%`.
3. Operadores de suma `+` y resta `-`.
4. Operadores mayor que `>`, mayor o igual que `>=`, menor que `<` y menor o igual que `<=`.
5. Operadores de comparación igual que `==` y diferente que `!=`.
6. Operador lógico "y" `and`.
7. Operador lógico "o" `or`.
8. Operador de asignación `=`

<br>

## Declaración de una función
Las funciones se llaman utilizando la sintaxis de función CSS normal.

```scss
@function pow($base, $exponent) {
    $result: 1;
    @for $_ from 1 through $exponent {
        $result: $result * $base;
    }
    @return $result;
}

.sidebar {
    float: left;
    margin-left: pow(4, 3) * 1px;
}
```