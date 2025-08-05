## Subclasificación con `extends`

**Obligatorio**  
**Tarea:** Crear una jerarquía de clases con una superclase `Vehículo` y una subclase `Auto`.

### Requisitos

#### Vehicle Class

- Campo: `String type = 'Generic Vehicle'`  
- Método: `describe()` → imprime: `"This is a Generic Vehicle"`

#### Car Class

- Hereda de `Vehicle`  
- Agrega un campo: `int wheels = 4`

### Entrada esperada

```dart
void main() {
  Car miAuto = Car();
  print(miAuto.tipo);
  print(miAuto.ruedas);
  miAuto.describir();
}
```
#### Salida esperada

```dart
Generic Vehicle
4
This is a Generic Vehicle
```