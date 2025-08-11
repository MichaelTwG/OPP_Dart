abstract class Flyable{
  void fly();
}

class Bird implements Flyable{
  @override
  void fly(){
    print('Bird is flying');
  }
}

class Plane implements Flyable{
  @override
  void fly(){
    print('Plane is flying');
  }
}

makeFly(Flyable f){
  f.fly();
}

void main(){
  Bird bird = Bird();
  Plane plane = Plane();

  makeFly(bird);
  makeFly(plane);
}