class Person{
  String? name;
  int? age;

  void introduce(){
    print("Hi, I'm $name and I'm $age years old.");
  }
}

void main(){
  Person person = Person();
  person.name = 'Alice';
  person.age = 30;

  person.introduce();
}