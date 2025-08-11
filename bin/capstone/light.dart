import 'smart_device.dart';

class Light extends SmartDevice{
  @override
  void turnOn() {
    super.turnOn();
    print("Light turned on.");
  }

  @override
  void turnOff() {
    super.turnOff();
    print('Light turned off.');
  }
}