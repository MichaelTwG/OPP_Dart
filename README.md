# Object Oriented Programin in Dart

**Nota:** Todos los archivos con la resolucion de las tareas estan dento de la carpeta `bin`

## Subclasificación con `extends`
**Tarea:** Crear una jerarquía de clases con una superclase `Vehículo` y una subclase `Auto`.

### Requisitos

#### Clase Vehicle

- Campo: `String type = 'Generic Vehicle'`  
- Método: `describe()` → imprime: `"This is a Generic Vehicle"`

#### Clase Car

- Hereda de `Vehicle`  
- Agrega un campo: `int wheels = 4`

### Entrada esperada

```dart
void main() {
  Car myCar = Car();
  print(myCar.type);
  print(myCar.wheels);
  myCar.describe();
}
```

### Salida esperada

```dart
Generic Vehicle
4
This is a Generic Vehicle
```

---

## Herencia de Métodos y Propiedades
  
**Tarea:** Demostrar que una subclase hereda tanto métodos como propiedades de su superclase.

### Requisitos

- Reutilizar `Vehicle` y `Car` de la Tarea 1.  
- Sin agregar nuevos métodos a `Car`, acceder e imprimir la propiedad heredada `type` y llamar al método `describe()`.

### Entrada esperada

```dart
void main() {
  Car c = Car();
  print('Inherited property: ${c.type}');
  print('Calling inherited method:');
  c.describe();
}
```

### Salida esperada

```dart
Inherited property: Generic Vehicle
Calling inherited method:
This is a Generic Vehicle
```
---

## Encadenamiento de Constructores con `super`

**Obligatorio**  
**Tarea:** Modelar una relación entre `Employee` y `Manager`, donde la clase hija utiliza `super` para invocar el constructor de la clase padre.

### Requisitos

#### Clase Employee

- Campos: `String name`, `int id`  
- Constructor: `Employee(this.name, this.id)`

#### Clase Manager

- Hereda de `Employee`  
- Agrega un nuevo campo: `String department`  
- Constructor: utiliza `super` para pasar `name` e `id`

### Entrada esperada

```dart
void main() {
  Manager mgr = Manager('Alice', 1001, 'HR');
  print('${mgr.name}, ID: ${mgr.id}, Dept: ${mgr.department}');
}
```

### Salida esperada

```dart
Alice, ID: 1001, Dept: HR
```
---

## Sobrescritura de Métodos y Uso de `super`

**Tarea:** Mostrar cómo una subclase puede sobrescribir un método de su superclase y aún así acceder al comportamiento original usando `super`.

### Requisitos

#### Clase Animal

- Método: `makeSound()` → prints `"Some generic animal sound"`.

#### Clase Dog

- Hereda de `Animal`.
- Sobrescribe `makeSound()` → imprime `First call `super.speak() then print "Woof!"`.

### Entrada esperada

```dart
void main() {
  Dog myDog = Dog();
  myDog.makeSound();
}
```

### Salida esperada

```dart
Some generic animal sound
The animal makes a sound
```