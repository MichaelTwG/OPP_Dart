# Programación Orientada a Objetos en Dart

## Clases y Objetos

 *Introducción y Contexto*
Este proyecto introduce a los estudiantes en los conceptos fundamentales de la Programación Orientada a Objetos (POO) utilizando la arquitectura basada en clases de Dart.
La capacidad de modelar entidades del mundo real mediante clases y crear instancias de esas clases (objetos) es esencial para diseñar software estructurado y fácil de mantener.

---

### 0. Definición e Instanciación de Clases

**Obligatorio**
**Tarea:** Definir una clase llamada `Animal` con un método y una propiedad.

**Requisitos:**

* Campo: `String name`
* Método: `speak()` que imprima `"Some sound"`

**Entrada Esperada:**

```dart
void main() {
  Animal a = Animal();
  a.name = 'Generic';
  a.speak();
}
```

**Salida Esperada:**

```
Some sound
```

---

### 1. Propiedades (Campos) y Métodos (Funciones)

**Obligatorio**
**Tarea:** Crear una clase en Dart llamada `Person`.

**Requisitos:**

* Campos:

  * `String name`
  * `int age`
* Método:

  * `introduce()` → imprime un mensaje como `"Hi, I'm Alice and I'm 30 years old."`

**Entrada Esperada:**

```dart
void main() {
  Person person = Person();
  person.name = 'Alice';
  person.age = 30;
  person.introduce();
}
```

**Salida Esperada:**

```
Hi, I'm Alice and I'm 30 years old.
```

---

### 2. Constructores (Por Defecto, Nombrados y Opcionales)

**Obligatorio**
**Tarea:** Crear una clase llamada `Book` que use diferentes tipos de constructores.

**Requisitos:**

* Campos:

  * `String title`
  * `String author`
* Constructores:

  * Constructor por defecto usando notación abreviada (`this.title`, `this.author`)
  * Constructor nombrado `Book.untitled()` que asigne valores por defecto

**Entrada Esperada:**

```dart
void main() {
  var custom = Book('1984', 'George Orwell');
  var defaultBook = Book.untitled();
  print('${custom.title}, by ${custom.author}');
  print('${defaultBook.title}, by ${defaultBook.author}');
}
```

**Salida Esperada:**

```
1984, by George Orwell
Untitled, by Unknown
```

---

### 3. Ciclo de Vida e Inicialización de Objetos

**Obligatorio**
**Tarea:** Crear una clase `Timer` que utilice parámetros en el constructor y demuestre conocimiento del ciclo de vida de un objeto.

**Requisitos:**

* Campo: `int seconds`
* Constructor: con parámetros nombrados
* Método: `start()` que imprima `"Timer started for X seconds."`

**Entrada Esperada:**

```dart
void main() {
  Timer t = Timer(seconds: 10);
  t.start();
}
```

**Salida Esperada:**

```
Timer started for 10 seconds.
```

---

Perfecto ✅
Aquí tienes el README con la nueva sección **Inheritance**, introducción y las tareas empezando desde **0** nuevamente:

---

## Inheritance

*Introducción y Contexto*
La **herencia** es un principio central de la Programación Orientada a Objetos (POO) que permite la reutilización de código y el modelado lógico de relaciones del mundo real.
En Dart, la herencia permite a los desarrolladores crear una nueva clase basada en una ya existente, heredando sus atributos y comportamientos, y agregando o modificando características según sea necesario.

Este proyecto introduce a los estudiantes en las jerarquías de clases mediante el uso de la palabra clave `extends`.
Los estudiantes aprenderán a construir relaciones de subclase, sobrescribir métodos del padre, encadenar constructores con `super` y acceder a miembros heredados.
Estas habilidades forman la base para crear aplicaciones modulares, mantenibles y escalables.

---

### 0. Jerarquía de Clases (Herencia)

**Obligatorio**
**Tarea:** Crear una jerarquía de clases con una superclase `Vehicle` y una subclase `Car`.

**Requisitos:**

* Clase `Vehicle`:

  * Campo: `String type = 'Generic Vehicle'`
  * Método: `describe()` → imprime `"This is a Generic Vehicle."`
* Clase `Car`:

  * Hereda de `Vehicle`
  * Añade un campo: `int wheels = 4`

**Entrada Esperada:**

```dart
void main() {
  Car myCar = Car();
  print(myCar.type);
  print(myCar.wheels);
  myCar.describe();
}
```

**Salida Esperada:**

```
Generic Vehicle
4
This is a Generic Vehicle.
```

---

### 1. Encadenamiento de Constructores con `super`

**Obligatorio**
**Tarea:** Modelar una relación entre `Employee` y `Manager`, donde la clase hija use `super` para invocar el constructor de la clase padre.

**Requisitos:**

* Clase `Employee`:

  * Campos: `String name`, `int id`
  * Constructor: `Employee(this.name, this.id)`
* Clase `Manager`:

  * Hereda de `Employee`
  * Añade un nuevo campo: `String department`
  * Constructor: usa `super` para pasar `name` e `id`

**Entrada Esperada:**

```dart
void main() {
  Manager mgr = Manager('Alice', 1001, 'HR');
  print('${mgr.name}, ID: ${mgr.id}, Dept: ${mgr.department}');
}
```

**Salida Esperada:**

```
Alice, ID: 1001, Dept: HR
```

---

### 2. Sobrescritura de Métodos y Uso de `super`

**Obligatorio**
**Tarea:** Sobrescribir un método en una subclase y llamar a la versión del padre usando `super`.

**Requisitos:**

* Clase `Animal`:

* Método: `makeSound()` → imprime `"Some generic animal sound"`
* Clase `Dog`:

  * Hereda de `Animal`
  * Sobrescribe `makeSound()` para:

    1. Llamar primero a `super.makeSound()`
    2. Luego imprimir `"Woof!"`

**Entrada Esperada:**

```dart
void main() {
  Dog myDog = Dog();
  myDog.makeSound();
}
```

**Salida Esperada:**

```
Some generic animal sound
Woof!
```

---

## Polimorfismo

*Introducción y Contexto*
El polimorfismo es un principio clave en la programación orientada a objetos que permite tratar objetos de diferentes tipos mediante una interfaz común.
En Dart, el polimorfismo ofrece flexibilidad al permitir que las clases implementen comportamientos compartidos mediante la herencia o interfaces, mientras que la ejecución del método real se determina dinámicamente en tiempo de ejecución.

En este proyecto, los estudiantes explorarán la aplicación práctica del polimorfismo a través de la sobrescritura de métodos, clases abstractas e interfaces.
Aprenderán cómo Dart realiza el despacho dinámico y cómo usar herramientas de verificación de tipo en tiempo de ejecución como `is`, `as` y `runtimeType` para interactuar con colecciones heterogéneas de objetos.

---

### 0. Sobrescritura vs Sobrecarga de Métodos

**Obligatorio**
**Tarea:** Crear una clase base `Shape` con un método `draw()`. Crear dos subclases `Circle` y `Square` que sobrescriban `draw()`.

**Requisitos:**

* Clase `Shape`:

  * Método: `draw()` → imprime `"Drawing a shape"`
* Clase `Circle`:

  * Sobrescribe `draw()` → imprime `"Drawing a circle"`
* Clase `Square`:

  * Sobrescribe `draw()` → imprime `"Drawing a square"`

*Instanciar todas las clases y llamar a `draw()`.*

**Entrada Esperada:**

```dart
void main() {
  Shape s = Shape();
  Circle c = Circle();
  Square sq = Square();

  s.draw();
  c.draw();
  sq.draw();
}
```

**Salida Esperada:**

```
Drawing a shape
Drawing a circle
Drawing a square
```

---

### 1. Clases Abstractas y la Palabra Clave `abstract`

**Obligatorio**
**Tarea:** Crear una clase abstracta `Animal` con un método abstracto `makeSound()` y un método concreto `sleep()`. Luego implementar las subclases `Dog` y `Cat`.

**Requisitos:**

* Clase `Animal`:

  * Método abstracto: `makeSound()`
  * Método concreto: `sleep()` → imprime `"Sleeping..."`
* Clases `Dog` y `Cat`:

  * Implementan `makeSound()`
  * `Dog` → imprime `"Woof!"`
  * `Cat` → imprime `"Meow!"`

**Entrada Esperada:**

```dart
void main() {
  Dog d = Dog();
  Cat c = Cat();

  d.makeSound();
  d.sleep();
  c.makeSound();
  c.sleep();
}
```

**Salida Esperada:**

```
Woof!
Sleeping...
Meow!
Sleeping...
```

---

### 2. Interfaces mediante Implementación de Clases

**Obligatorio**
**Tarea:** Definir una interfaz `Flyable` y implementarla en dos clases diferentes.

**Requisitos:**

* Interfaz: crear clase `Flyable` con método `fly()`
* Implementar la interfaz en `Bird` y `Plane`:

  * `Bird.fly()` → imprime `"Bird is flying"`
  * `Plane.fly()` → imprime `"Plane is flying"`

**Entrada Esperada:**

```dart
void main() {
  Flyable f1 = Bird();
  Flyable f2 = Plane();

  f1.fly();
  f2.fly();
}
```

**Salida Esperada:**

```
Bird is flying
Plane is flying
```

---

### 3. Resolución de Tipo en Tiempo de Ejecución

**Obligatorio**
**Tarea:** Usar una lista con objetos de tipos mixtos para demostrar la verificación de tipo en tiempo de ejecución con `is`, `as` y `runtimeType`.

**Requisitos:**

* Crear clases: `Dog` y `Cat`, ambas extienden `Animal`
* Guardar instancias de ambas en una lista de tipo `List<Animal>`
* Recorrer la lista y:

  * Imprimir el tipo en tiempo de ejecución (`runtimeType`)
  * Llamar a `makeSound()`
  * Si el objeto es `Dog`, imprimir `"It's a dog"`

**Entrada Esperada:**

```dart
void main() {
  List<Animal> pets = [Dog(), Cat()];

  for (var pet in pets) {
    print(pet.runtimeType);
    pet.makeSound();
    if (pet is Dog) {
      print("It's a dog");
    }
  }
}
```

**Salida Esperada:**

```
Dog
Woof!
It's a dog
Cat
Meow!
```

---

## Encapsulación y Abstracción

*Introducción y Contexto*
La encapsulación y la abstracción son esenciales para manejar la complejidad del software y asegurar su mantenimiento a largo plazo.
La encapsulación protege el estado interno de los objetos restringiendo el acceso directo a los campos y forzando interacciones controladas mediante métodos o accesores.
La abstracción permite a los desarrolladores exponer solo los componentes necesarios de un sistema, simplificando su uso y ocultando detalles de implementación.

En Dart, la encapsulación se aplica mediante convenciones de nombres (por ejemplo, el prefijo `_` para miembros privados), y el acceso a los datos se controla con getters y setters.
Las clases abstractas permiten la abstracción definiendo un contrato de comportamiento mientras dejan la implementación a las clases concretas.
Este proyecto ayuda a los estudiantes a interiorizar estos principios de diseño para construir programas modulares y escalables.

---

### 0. Modificadores de Visibilidad: `public` vs privado (`_`)

**Obligatorio**
**Tarea:** Crear una clase `BankAccount` que use campos privados para encapsular datos.

**Requisitos:**

* Campo privado: `_balance` (double)
* Método: `deposit(double amount)` → añade al `_balance`
* Método: `getBalance()` → imprime `"Current balance: X"`

**Entrada Esperada:**

```dart
void main() {
  BankAccount account = BankAccount();
  account.deposit(150.0);
  account.getBalance();
}
```

**Salida Esperada:**

```
Current balance: 150.0
```

---

### 1. Getters y Setters (Regulares y Computados)

**Obligatorio**
**Tarea:** Mejorar `BankAccount` para usar getters y setters para acceder al balance.

**Requisitos:**

* Getter: `balance` → retorna `_balance`
* Setter: `balance = value` → asigna `_balance` solo si `value` es no negativo
* Propiedad computada: crear un getter `status` que retorne `"Empty"`, `"Low"` o `"Healthy"` según umbrales de balance

**Entrada Esperada:**

```dart
void main() {
  BankAccount account = BankAccount();
  account.balance = 250.0;
  print('Balance: ${account.balance}');
  print('Status: ${account.status}');
}
```

**Salida Esperada:**

```
Balance: 250.0
Status: Healthy
```

---

### 2. Clases Abstractas y Declaración de Métodos

**Obligatorio**
**Tarea:** Definir una clase abstracta `Device` con un método `turnOn()` e implementarla en dos clases: `Printer` y `Monitor`.

**Requisitos:**

* `Device` debe definir:

  * Método abstracto: `turnOn()`
* `Printer` y `Monitor` deben implementar `turnOn()` con salidas diferentes

**Entrada Esperada:**

```dart
void main() {
  Device printer = Printer();
  Device monitor = Monitor();

  printer.turnOn();
  monitor.turnOn();
}
```

**Salida Esperada:**

```
Printer is now ON.
Monitor is now ON.
```

---

### 3. Separación de Interfaz e Implementación

**Obligatorio**
**Tarea:** Diseñar una clase `User` que exponga solo métodos esenciales para uso externo, ocultando cómo se almacenan los datos internamente.

**Requisitos:**

* Campo privado: `_data` (Map\<String, dynamic>)
* Métodos públicos:

  * `setName(String name)`
  * `getName()` → retorna `"Name not set"` si no se ha asignado nombre

**Entrada Esperada:**

```dart
void main() {
  User user = User();
  print(user.getName()); // Antes de asignar
  user.setName('Alice');
  print(user.getName());
}
```

**Salida Esperada:**

```
Name not set
Alice
```

---

Claro, aquí tienes el proyecto **Smart Home Simulation System** traducido y en formato README para que puedas agregarlo directamente a tu repositorio o documentación:

---

## Sistema de Simulación de Casa Inteligente

*Introducción y Contexto*

En este proyecto final, los estudiantes diseñarán e implementarán un sistema simplificado de Casa Inteligente utilizando las capacidades orientadas a objetos de Dart.
El sistema modela dispositivos inteligentes como termostatos, luces y alarmas, permitiendo gestionarlos a través de una interfaz unificada.
Este proyecto reta a los estudiantes a aplicar principios clave de POO para crear una aplicación escalable, modular y mantenible mediante jerarquías de clases, abstracción, polimorfismo y encapsulación.

Este proyecto simula patrones de diseño reales en IoT (Internet de las cosas), exigiendo a los estudiantes arquitecturar APIs flexibles, aplicar control de acceso y comportamientos dinámicos entre tipos de dispositivos.

*Objetivos de Aprendizaje*

Al completar este proyecto final, los estudiantes podrán:

* Aplicar modelado basado en clases para representar dispositivos inteligentes del mundo real.
* Usar herencia y polimorfismo para unificar interfaces y comportamientos de dispositivos.
* Aprovechar clases abstractas e interfaces para definir una arquitectura extensible.
* Aplicar encapsulación para proteger el estado interno y exponer solo la funcionalidad necesaria.
* Construir una estructura modular con clara separación de responsabilidades.

---

### 0. Jerarquía Principal de Clases de Dispositivos

**Obligatorio**
**Tarea:** Crear una clase abstracta `SmartDevice` que sirva como base para todos los dispositivos inteligentes del hogar.

**Requisitos:**

* `SmartDevice` debe incluir:

  * Método abstracto: `void turnOn()`
  * Método abstracto: `void turnOff()`
  * Método concreto: `printStatus()` → imprime el estado basado en si el dispositivo está encendido o apagado
  * Campo privado: `_isOn` (booleano)

* Subclases:

  * `Light`: implementa `turnOn()` y `turnOff()` con mensajes específicos
  * `Thermostat`: añade campo `temperature` con getter y setter
  * `Alarm`: incluye método `triggerAlarm()` solo si está apagado

**Ejemplo de salida esperada:**

```
Light turned on.
Current status: ON
Thermostat set to 22°C.
Alarm triggered! (because it was off)
```

---

### 1. Encapsulación y Propiedades Computadas

**Obligatorio**
**Tarea:** Encapsular el estado interno de cada dispositivo con campos privados y exponer interfaces públicas.

**Requisitos:**

* Todos los datos específicos de cada dispositivo deben ser privados (prefijo `_`)
* Exponer interacción mediante:

  * Getter `status`
  * Métodos personalizados (por ejemplo, `increaseTemp()`)
* Implementar getters computados para resúmenes de estado, como:

  * `isEcoMode` → devuelve `true` si el termostato está por debajo de 20°C

---

### 2. Controlador de Dispositivos y Polimorfismo

**Obligatorio**
**Tarea:** Crear una clase `SmartHomeController` que administre múltiples instancias de `SmartDevice` de forma uniforme.

**Requisitos:**

* Mantener una lista de `SmartDevice`
* Proveer método `runDiagnostics()` que:

  * Itere sobre todos los dispositivos
  * Llame a `printStatus()` e imprima `runtimeType`
* Implementar método `addDevice(SmartDevice device)`

**Entrada Esperada:**

```dart
SmartHomeController controller = SmartHomeController();
controller.addDevice(Light());
controller.addDevice(Thermostat());
controller.runDiagnostics();
```

**Salida Esperada:**

```
[Light] Status: OFF
[Thermostat] Status: OFF
```

---

### 3. Simulación de Uso del Sistema

**Obligatorio**
**Tarea:** Escribir una simulación en `main()` que realice lo siguiente:

* Agregar tres dispositivos
* Encender algunos y dejar otros apagados
* Activar comportamientos específicos (como `setTemperature` y `triggerAlarm`)
* Imprimir un reporte completo del estado

**Ejemplo de salida esperada:**

```
Smart Light: ON
Thermostat: ON, 22°C, EcoMode: false
Alarm: OFF — Triggering emergency signal!
```

---