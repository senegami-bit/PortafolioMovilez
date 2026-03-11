# PortafolioMovilez
Estos archivos introducen los elementos fundamentales del lenguaje Dart.

01_holaMundo.dart

Propósito: El programa más simple posible. Sirve como punto de partida para cualquier lenguaje de programación.

Función: Define la función main(), que es el punto de entrada de toda aplicación Dart. Dentro de ella, utiliza print() para mostrar el texto "Hola mundo" en la consola.

02_DataTypes.dart

Propósito: Demostrar los diferentes tipos de datos primitivos y colecciones en Dart.

Función: Declara y utiliza variables de varios tipos:

Números: int (enteros), double (decimales).

Cadenas: String, mostrando diferentes formas de crearlas (con comillas simples, dobles, para caracteres de escape y cadenas multilínea) e interpolación ($variable).

Booleanos: bool (true/false).

Listas: List (arreglos ordenados que pueden tener elementos duplicados). Muestra tanto listas de tipo dynamic (cualquier valor) como listas tipadas (List<String>).

Sets: Set (colección no ordenada de elementos únicos). También muestra la conversión de una lista a un set.

Mapas: Map (colección de pares clave-valor). Muestra diferentes formas de crear e inicializar mapas, y cómo acceder a sus valores.

También introduce los modificadores ? (nullable) y late (inicialización tardía).

profesor_04.dart y 04_comments.dart

Propósito: Explicar los diferentes tipos de comentarios en Dart.

Función: Muestran ejemplos de:

Comentarios de una línea: // Esto es un comentario.

Comentarios de múltiples líneas: /* ... */.

Comentarios de documentación: /// ... (usados para generar documentación automática).

profesor_05.dart y 06_operators.dart

Propósito: Demostrar el uso de operadores en Dart.

Función:

profesor_05.dart se enfoca en los operadores aritméticos (+, -, *, /, ~/, %, ++, --, +=, -=).

06_operators.dart muestra operadores de asignación (=, ??=) y operadores condicionales/ternarios (condición ? valorSiTrue : valorSiFalse).

03_finalConst.dart

Propósito: Explicar la diferencia entre final y const para declarar variables inmutables.

Función:

final: La variable se asigna una sola vez (en tiempo de ejecución). El valor de la variable no puede cambiar, pero si es una lista, su contenido interno sí (sus elementos pueden modificarse).

const: La variable es una constante en tiempo de compilación. El valor es fijo e inmutable, y todos sus elementos internos también lo son. Por eso, al intentar agregar un elemento a personasConst (que es const) el programa fallaría si se descomenta la línea.

Archivos de Interacción con el Usuario (Entrada/Salida)
Estos programas introducen la interacción con el usuario a través de la consola.

07_read.dart y 08_helloName.dart

Propósito: Leer datos ingresados por el usuario desde el teclado.

Función: Utilizan stdout.write() o stdout.writeln() para mostrar un mensaje (prompt) y stdin.readLineSync() para capturar el texto que el usuario escribe. Luego, saludan al usuario usando el nombre ingresado.

09_sum.dart

Propósito: Realizar una operación aritmética simple con datos ingresados por el usuario.

Función: Pide dos números al usuario. Los lee como cadenas de texto (String) y los convierte a números (double.parse()) para poder sumarlos. Finalmente, muestra el resultado de la suma.

10_concat.dart

Propósito: Mostrar diferentes formas de unir (concatenar) cadenas de texto.

Función: Pide nombre, apellido y segundo nombre al usuario. Luego, los imprime juntos usando tanto la interpolación ('$nombre') como el operador de concatenación (+).

Archivos de Estructuras de Control (Condicionales y Bucles)
Estos archivos implementan la lógica del programa usando condicionales (if, switch) y bucles (for, while).

11_mayor.dart

Propósito: Encontrar el número mayor entre dos ingresados.

Función: Usa una estructura if-else if-else para comparar dos números. Dependiendo de cuál sea mayor (o si son iguales), imprime un mensaje diferente.

12_nestedIF.dart

Propósito: Ordenar cuatro números de mayor a menor.

Función: Este código es un ejemplo de cómo NO se debe hacer (es ineficiente y difícil de leer). Utiliza una serie de condicionales if anidados para comparar e intercambiar los valores de las variables manualmente, con el fin de dejarlas ordenadas. Es una demostración de lógica compleja con condicionales, pero en la práctica se usarían algoritmos de ordenamiento o métodos de lista.

13_area.dart

Propósito: Calcular el área o el volumen de diferentes figuras geométricas.

Función: Es un programa interactivo más complejo.

Pregunta al usuario si quiere calcular "area" o "volumen".
Según la respuesta, muestra un submenú de figuras (círculo, triángulo, rectángulo para área; esfera, pirámide, cubo para volumen).
Usa una estructura switch para seleccionar la fórmula correcta basada en la figura elegida.
Pide las medidas necesarias (radio, base, altura, etc.) y realiza el cálculo.
Finalmente, pregunta si el usuario quiere repetir el programa, usando un bucle while que se ejecuta mientras la respuesta sea 'S'.
14_tablas.dart

Propósito: Generar la tabla de multiplicar de un número.

Función: Pide un número al usuario y luego usa un bucle for que itera 50 veces (de 1 a 50) para calcular e imprimir el producto del número ingresado por el iterador i. El programa se repite hasta que el usuario ingresa '0'.

15_grades.dart

Propósito: Convertir una calificación en letras del sistema americano (A+, A, B, C, D, F) a un equivalente numérico.

Función:

Usa un bucle while para validar la entrada del usuario, asegurándose de que ingrese una letra válida.
Una vez que la entrada es válida, usa una estructura switch para comparar la letra ingresada e imprimir el mensaje correspondiente con su equivalente numérico.
16_suma.dart

Propósito: Sumar una cantidad indefinida de números ingresados por el usuario.

Función:

Inicializa una variable res (resultado) en 0.
Usa un bucle while que se ejecuta mientras el usuario no ingrese '0'.
Dentro del bucle, pide un número. Usa un bloque try-catch para evitar que el programa se detenga si el usuario ingresa algo que no es un número (como letras). Si la entrada es válida, la suma a res.
Cuando el usuario ingresa '0', el bucle termina y se imprime la suma total.
Archivos de Funciones y Lógica Específica
Estos archivos introducen el concepto de funciones y resuelven problemas específicos.

17_labes.dart

Propósito: Demostrar el uso de labels (etiquetas) para controlar bucles anidados.

Función: Tiene un bucle for externo (con j) y uno interno (con i).

El bucle interno calcula el residuo de i % 2. Si el residuo es 1 (i es impar), ejecuta break outterCycle;.

Esto hace que el programa no solo salga del bucle interno, sino del bucle externo etiquetado como outterCycle, saltando directamente a la línea después de este. Es una forma de romper múltiples niveles de bucles a la vez.

18a_functions.dart y 18b_functions.dart

Propósito: Introducir el concepto de funciones, mostrando la diferencia entre tener toda la lógica en main y encapsularla en una función separada.

Función:

18a_functions.dart: Toda la lógica para generar la tabla de multiplicar está dentro de la función main. Es un script lineal.

18b_functions.dart: Define una función llamada multiply(int numero) que recibe un número como parámetro y se encarga de generar e imprimir su tabla de multiplicar. La función main solo se encarga de pedir el dato al usuario y luego llamar a multiply(n). Esto hace que el código sea más organizado, reutilizable y fácil de mantener.

19_cousins.dart

Propósito: Determinar si un número ingresado por el usuario es primo o no.

Función: Define una función cousin(numero).

Contiene una serie de validaciones iniciales (números menores o iguales a 1, el número 2, números pares).

Luego, itera en un bucle for desde 3 hasta el numero, incrementando de 2 en 2 (solo números impares). Si encuentra un divisor exacto (numero % i == 0), imprime "NO ES UN PRIMO" y la función termina con return.

Nota importante: El código tiene un error de lógica. Si el número no es divisible por el primer impar del bucle, inmediatamente imprime "es un primo" y sale, lo cual es incorrecto. Debería recorrer todas las iteraciones del bucle y solo declarar que es primo si ninguna división fue exacta. La lógica de validación de números pares también es redundante después del bucle.



20_factorial.dart: Calcula el factorial de un número ingresado por el usuario usando un ciclo for.

20b_factorial.dart: Calcula el factorial de un número usando una función independiente que recibe el valor y retorna el resultado.

20c_factorial.dart: Calcula el factorial de un número de forma recursiva (la función se llama a sí misma).

21_suma.dart: Suma recursivamente un número y todos sus precedentes (ejemplo: 5 → 5+4+3+2+1).

22_stack.dart: Implementa una pila (stack) usando nodos enlazados: permite insertar, sacar y mostrar elementos.

23_queue.dart: Implementa una cola (queue) usando nodos enlazados: permite agregar, quitar y mostrar elementos.

24_try.dart: Calcula el factorial con manejo de excepciones para números negativos y errores de entrada.

25_prpuesta.dart: Simula un sistema de tickets usando una cola para tickets pendientes y una pila para deshacer acciones.





