# Tarea 2 EL5805 Procesamiento Digital de Señales Carlos Andrés Mata Calderón

Este es el repositorio base para realizar la tarea 2.

Describa aquí lo que considere necesario para su solución.

## Parte 2

La diferencia entre el comando `stem()` y el `plot()`, que es `stem()` gráfica los puntos de la señal como un punto y una línea vertical por cada punto, mientras que `plot()` gráfica los puntos de la señal como un punto y una línea horizontal que lo une con el eje x, donde parece que es una señal continua.


## Parte 4

$$f_1 = 1 + f_0$$
$$f_1 = 1 + 0.05$$
$$f_1 = 1.05$$

Se utiliza 1 + f0 porque al utilizar seno se toma en consideracion el signo
para el efecto alisasing. Por lo que para quede exactamente igual
y no invertido se utlizan valores positivos de frecuencias alias.

## Parte 8

### ¿Qué causa lo que se escucha?

A medida que la frecuencia de la señal barrida aumenta y supera la
frecuencia de rango $[0, 0.5]$ fundamental de frencuencias. Por lo
es escucha la periocidad de la señal.

### ¿Es el número de ciclos esperado?

No, aunque la señal barrida aumenta linealmente en frecuencia,
debido al aliasing las frecuencias se reflejarán y parecerán disminuir.

### ¿Cómo podría justificar lo escuchado?

Cuando suceude el efecto alias hace que el número de ciclos percibidos
no sea el esperado, ya que las frecuencias más altas se perciben como
frecuencias más bajas.
