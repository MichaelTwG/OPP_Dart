abstract class Animal{
  void makeSound();
  void sleep() {
    print('Sleeping...');
  }
}

class Dog extends Animal{
  void makeSound() {
    print('Woof!');
  }
}

class Cat extends Animal{
  void makeSound() {
    print('Meow!');
  }
}

void main(){
  Dog d = Dog();
  Cat c = Cat();

  d.makeSound();
  d.sleep();
  c.makeSound();
  c.sleep();
}