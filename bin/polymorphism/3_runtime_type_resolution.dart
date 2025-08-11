import '1_abstract_classes.dart';

void main(){
  List<Animal> pets = [Dog(), Cat()];

  for(var pet in pets){
    print(pet.runtimeType);
    pet.makeSound();
    if (pet is Dog) {
      print("It's a dog");
    }
  }
}