# Sistema binario

- Decimal
    0 1 2 3 4 5 6 7 8 9

- Binario
    0 1

Ausencia y Presencia de corriente respectivamente

`1`: Presencia de corriente
`0`: Ausencia de corriente

### Conversión Decimal a Binario  

Encontremos el equivalente en binario del número 28

$28 / 2 = 14$  
% 0  
$14 / 2 = 7$  
% 0  
$7 / 2 = 3$  
% 1  
$3 / 2 = 1$  
% 1  


Unimos los módulos (residuos) de las divisiones de abajo hacia arriba (derecha a izquierda), en el caso de 28 sería:

28 = 11100

Otro ejemplo:
192

$192 / 2 = 96$ % 0  
$96 / 2 = 48$ % 0  
$48 / 2 = 24$ % 0  
$24 / 2 = 12$ % 0  
$12 / 2 = 6$ % 0  
$6 / 2 = 3$ % 0  
$3 / 2 = 1$ % 1  

192 = 11000000

### Conversión Binario a Decimal

Encontremos el equivalente en decimal del número binario 11100

Multiplicamos cada bit por dos elevado a X potencia(comenzando la primera potencia en 0 e incrementándola en 1 por cada dígito), comenzando por el último bit, es decir de derecha a izquierda:

$0 * 2⁰ = 0 * 1 = 0$  
$0 * 2¹ = 0 * 2 = 0$  
$1 * 2² = 1 * 4 = 4$  
$1 * 2³ = 1 * 8 = 8$  
$1 * 2⁴ = 1 * 16 = 16$  

Se suman los resultados:

$0 + 0 + 4 + 8 + 16 = 28$

11100 = 28

Otro ejemplo:
11000000

$0 * 2⁰ = 0 * 1 = 0$  
$0 * 2¹ = 0 * 2 = 0$  
$0 * 2² = 0 * 4 = 0$  
$0 * 2³ = 0 * 8 = 0$  
$0 * 2⁴ = 0 * 16 = 0$  
$0 * 2⁵ = 0 * 32 = 0$  
$1 * 2⁶ = 1 * 64 = 64$  
$1 * 2⁷ = 1 * 128 = 128$  

$0 + 0 + 0 + 0 + 0 + 0 + 64 + 128 = 192$