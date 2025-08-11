abstract class Device{
  void turnOn();
}

class Printer implements Device{
  @override
  void turnOn() {
    print("Printer is now ON");
  }
}

class Monitor implements Device{
  @override
  void turnOn(){
    print('Monitor is now ON');
  }
}

void main() {
  Device printer = Printer();
  Device monitor = Monitor();

  printer.turnOn();
  monitor.turnOn();
}