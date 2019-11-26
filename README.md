# Unagi 

## Manual de usuario

### Tipos de Datos
* num (número entero)
* decimal (número decimal)
* char (caracter)
* phrase (string)
* bool (booleano)

### Operadores
Los siguientes operadores son usados para realizar operaciones en Unagi
* '+'
* '-'
* '*'
* '/'
* '>'
* '<'
* '>='
* '<='
* '=='
* '<>' (diferente de)

### Estructura de un programa
Los programas de Unagi empiezan con el indicador ```program NombreDelPrograma:``` seguidos de bloques de funciones (las cuales pueden existir o no) y una función obligatoria llamada ```start``` que será lo primero en correr dentro del programa.

Las variables se deben declarar al principio de los bloques de código es decir todo lo que está dentro de las funciones, start y program.

EJEMPLO:
```
program manual:

var num x;
var list<num>(4) arr;

  func num fibonacci(num n) {
    if (n <= 1) {
      return n;
    }
    return fibonacci(n - 1) + fibonacci(n - 2);
  }

  start {
    x = 5;
    print(fibonacci(x));
  }
```

### Funciones
En Unagi hay dos tipos de funciones empty y de tipo de retorno, las funciones tipo empty no regresan valor y los de retorno regresan un valor del tipo de la función. La forma de definicar las funciones es ```func <tipo de la función> <nombre de la func>(parametros) {}```

EJEMPLOS:
```
func empty test(phrase message) {
  print(message);
}

func int testNum(num num1, num num2) {
  return num1 + num2;
}
```

### Declaración y Asignación de variables
Para darle un valor a una variable, esta primero se debe declarar y luego asignar un valor.

#### Declaración
```
var num x, phrase y;
```
#### Asignación
```
x = 10 + 1;
y = "String";
```

### Listas
Unagi cuenta con listas como estructura de datos, las listas solo son de una dimensión. Las listas tienen funciones especiales por lo que también pueden ser usadas como stack y queues.

Las listas pueden ser de todos los tipos mencionados igual que las variables y solo pueden contener un tipo de elementos.

#### Funciones de las listas
* .add(valor a agregar) -> agrega un valor al arreglo
* .get(indice del arreglo) -> regresa el valor que tiene la lista en ese indice
* .set(indice, valor) -> agrega el valor al indice especificado
* .first() -> regresa el primer valor de la lista
* .last() -> regresa el último valor de la lista
* .pop() -> elimina el último valor de la lista
* .count() -> regresa la cantidad de elementos de la lista

### Declaración de listas
```
var list<num>(4) arr;
```
Donde el valor dentro del parentesis es el tamaño máximo de la lista.
