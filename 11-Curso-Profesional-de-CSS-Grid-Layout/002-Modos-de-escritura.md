# Modos de escritura (writing modes)

Dependiendo de nuestro sistema de escritura es como las propiedades que nos ayudan a organizar el layout se comportarán.  Podemos tomar de ejemplo nuestro sistema de escritura latín, en el que escribimos de izquierda a derecha y de arriba hacia abajo.

Pero en otras circunstancias esto cambiará como por ejemplo con la escritura arabica que escriben de derecha a izquierda, o con escrituras asiáticas, que muchas escriben de manera vertical

Para esto se creó una nueva propiedad: `write-mode` y los valores de esta propiedad serian:
 - horizontal tb
 - vertical lr
 - vertical rl
 - sideways lr
 - sideways rl

Y también la propiedad `direction`.

Para esto es muy importante tener en cuenta los conceptos de block e inline que es en el que se basa la nueva forma de aplicar las propiedades físicas (top, bottom, left, right) de manera lógica.