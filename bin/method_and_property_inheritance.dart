void main() {
  Car c = Car();
  print('Inherited property: ${c.type}');
  print('Calling inherited method:');
  c.describe();
}

class Vehicle {
  String type = 'Generic Vehicle';

  void describe(){
    print('This is a $type');
  } 
}

class Car extends Vehicle {
  int wheels = 4;
}