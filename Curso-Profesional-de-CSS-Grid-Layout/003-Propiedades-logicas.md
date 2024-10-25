# Propiedades físicas vs lógicas

Las propiedades físicas, que aplican al modelo de caja (margin, border, padding) y que habíamos estado utilizando, como se había dicho en la clase pasada, son una limitante para el nuevo concepto y propiedad de writing mode, esto por temas de accesibilidad en lugares en donde el sistema de escritura es diferente al nuestro. Para poder llegar a estos usuarios se optó por reestructurar estas propiedades y darles una semántica meramente lógica.

**Propiedades**
Física | Lógica
:---: | :---:
[margin/border/padding]-top | [margin/border/padding]-block-start
[margin/border/padding]-bottom | [margin/border/padding]-block-end
[margin/border/padding]-left | [margin/border/padding]-inline-start
[margin/border/padding]-right | [margin/border/padding]-inline-end

También esto aplica a las propiedades de width y height:

Física | Lógica
:---: | :---:
width | inline-size
height | block-size

Y en las propiedades de position sería de esta manera:

Física | Lógica
:---: | :---:
top | inset-block-start
bttom | inset-block-end
left | inset-inline-start
right | inset-inline-end