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