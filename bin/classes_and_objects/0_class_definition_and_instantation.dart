class Animal {
  String? name;

  void speak(){
    print("Some sound");
  }
}

void main(){
  Animal a = Animal();
  a.name = 'Generic';
  a.speak();
}