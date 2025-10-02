# Estructura de transmicion de 2 velocidades y diseño optimizado para vehiculos electricos

La industria automotriz a comenzado a inclinarce sobre los vehiculos electricos esto ya que las regulaciones medioambientales limitan cada vez mas las emisiones de gases y uso de combustibles por esto los vehiculos de combustion se han vuelto menos adecuados para los objetivos de la industria.

## Abstracto

Los automoviles electricos se estan investigando y desarrolando constantemente, en este estudio se presenta el desarrollo de una transmicion de 2 velocidades para vehiculos electricos de clase 300Nm con el motivo de permitir un uso efeciente de energia.
Esta transmicion se compone de engranages planetarios y un embrague multidisco humedo.

## Introduccion
En el pasado los vehiculos de combustion interna (ICE) emitian gases de escape ya que usan principalmente combustibles fosiles 
por esto se han reforzado las regulaciones sobre el consumo de combustibles fosiles y la emision de gases de escape esto en respuesta al cambio climatico, por esto los vehiculos electricos (Evs) se han |desarrolado cada ves mas rapido ya que emiten significativamente menos dioxido de carbono y usan la energia de manera mas eficiete asi como una conduccion mas comoda al no producir practicamente ningun sonido.
las empresa automotices han apostado por estos vehiculos asi que participan el el desarrollo e investigacion para producir nuevos modelos.Los vehiculos electricos estan equipaos con un solo con una relacion de transmicion fija la cual permite la entrada de alta velocidad y bajo par motor sin embargo para alcanzar altas velocidades necesita tener un consumo elevado de bateria por esto se ha propuesto la transmicion de 2 velocidades ya que carece de una transmicion, esta tecnologia actualmente esta en una etapa experimental y de investigacion ya que contribuye al rendimiento a futuro de los vehiculos electricos, estas transmiciones tendran una tecnologia de sincronizador  que reduce la velocidad lateral sincronizada durante los cambion de marcha altos y la aumenta durante los cambios de marcha bajos esto mejorara la conduccion y la eficiencia.
aunque existen muchos tipos de transmiciones como la de doble embrague son complejas ya requieren de un mantenimiento mas costoso por esto las grandes empresas investigan y desarrollan nuevas transmiciones para vehiculos electricos un claro ejemplo es GNK Automotive el cula ha logrado avances importantes al desarrollar el primer modelo eAxle de 2 velocidades en el vehiculo BMW i8 el cual es un hibrido pese a sus ventajas tambien tine desventajas las cuales se intentar minimizar como lo es su complejidad.

## Necesidad de la investigacion 
actualmente se tiene la creencia de que los vehiculos electricos no requieren de transmicion sin embargo en comparacion con vehiculos de combustible, no se ha logrado utilizar a la par maximas velocidades esto no afecta en lo cotidiano ya que a velocidades normales no existe una diferencia notable pero al momento de alcanzar la maxima velocidad se nota la falta de una transmicion, las industris no le han tomado importancia ya que se centran el las baterias y han dejado de lado la necesidad de una transmicion para la optimizacion de energia ya que los motore electrocos llegan a la par maxima de manera inmediata a diferencia de los de combustion. el moyor desafia para las trnsmiciones se debe a la complejidad necesaria para funcionar de manera adecuada

### Desarrollo de el diseño de las transmiciones

La clave de este diseño está en el mecanismo de cambio, que es totalmente innovador porque nos permite olvidarnos de esos sincronizadores forzosos. La transmisión la configuramos de forma coaxial, es decir, los ejes de entrada y de cambios van en línea. El engranaje solar va directo al motor, y el truco para cambiar de marcha es un sistema mecánico muy preciso: el giro del motor se convierte en un movimiento lineal, como si fuera un tornillo que mueve una cremallera y luego una leva. Este movimiento es el que mueve las horquillas para que enganchen el embrague de garras para la primera, o el multidisco húmedo para la segunda velocidad.
para calcular este diseño se usaron fórmulas que consideran el número de dientes de los engranajes (solar y anular) y el comportamiento del sistema planetario. La relación entre las transmisiones es muy importante porque afectan no solo la aceleración, si no también el consumo de energía y la autonomía del vehículo. Un diseño bien pensado aquí puede mejorar mucho el rendimiento del carro eléctrico.

### Cuales fueron las formulas utilizadas 

```bash
La relación de engranajes: 𝜔𝑝=Z𝑟Z𝑠
Z𝑟 significa el numero de dientes del engranaje anular
Z𝑠 significa el numero de dientes del engranaje solar
```

```bash
la primera relacion corrresponde a esta formula
𝑖1=Z𝑟+𝑍𝑠Z𝑟×𝑍yo yo𝑍yo yo×𝑍𝑓𝑟𝑍𝑓𝑠
mientras que la segunda corresponde a esta formula
𝑖2= 1 ×𝛧yo yo𝛧yo yo×𝑍𝑓𝑟𝑍𝑓𝑠
```

### Resistencia de las transmiciones

Para asegurarse de que la transmisión aguante las fuerzas a las que estará sometida, se usó un software llamado Abaqus, que nos permite simular cómo se comportan los materiales bajo presión. Los componentes de la carcasa delantera, central y trasera, se hicieron con una aleación de aluminio (Al-Si-Cu) que es resistente y fácil de moldear, ideal para piezas de autos. Otros componentes, como el tambor y el cubo, se fabricaron con un acero especial (SCM420H) tratado para ser más duro y resistente al desgaste. También se usó otro tipo de acero (SAPH440) para la cubierta trasera. El análisis mostró que todos los componentes tienen un factor de seguridad mayor a 1, lo que significa que pueden soportar las cargas sin romperse. En términos simples, la tensión máxima que reciben es menor que lo que los materiales pueden aguantar, así que el diseño es seguro.


### Prototipo final de la transmisión

El sistema del prototipo final se compone del motor eléctrico, eje de entrada, conjunto planetario, embrague multidisco, eje de salida y diferencial.
Al conectar el engranaje solar directamente al motor y al activar el embrague para la primer o segunda velocidad optimizara la suavidad y resistencia gracias a su diseño además las relaciones de transmisión se calcularon con las formulas antes mencionadas, esto permitió obtener el número adecuado de dientes y al realizar un análisis de tensiones en la estructura  usando el software ABAQUS se demostró que tanto en la carcasa, en el conjunto de tambor y cubi asi como en la cubierta tracera el factor de seguridad es mayor a 1 esto demuestra que este diseño es confiable.

### Rendimiento en el prototipo

Se realizaron una variedad de pruebas, los resultados son muy prometedores ya que en la prueba de relación de transmisión tuvo una relación de 10:1 en primera y de 6,2:1 esto significa que la relación final es de 1,61 y esto es mayor al objetivo el cual era una relación de 1,60, la prueba de tiempo de cambio demostró una pasar de primera a segunda en 0,43 lo cual supeor el objetivo por mucho este objetivo era de 0,8 por lo que los cambios serán suaves y rapidos, la prueba de capacidad de par se demostró una resistencia de 300NM sin fallos lo cual era el objetivo  y su última prueba fue la de eficiencia al transmitir la potencia con resultados impresionantes debido a que mantuvo una eficacia promedio de 94,24% en primera de 94,13% y en segunda de 94,34%, esto deja en claro una perdida mínima.

### Conclusiones del estudio

Se ha logrado superar los retos que implican el crear una transmisión para vehículos eléctricos con el uso de programas de simulación como ABAQUS y al uso del calculo, la cual no solo supero los objetivos planteados con facilidad y mantiendo el 94,24% de la potencia generada también mostro no perdes su seguridad estructuran al tener la posibilidad de ejercer 300Nm sin ningún tipo de fallos por lo que los vehículos que integren este sistema usaran de la manera mas eficiente su batería y no utilizaran de manera ineficiente su batería al conducir a altas velocidades 
