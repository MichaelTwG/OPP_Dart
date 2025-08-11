void main () {
  Car myCar = Car();
  print(myCar.type);
  print(myCar.wheels);
  myCar.describe();
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