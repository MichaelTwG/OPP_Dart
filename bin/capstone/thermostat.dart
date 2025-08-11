import 'smart_device.dart';

class Thermostat extends SmartDevice{
  int _temperature = 20;

  int get temperature{
    return _temperature;
  }
  set temperature(int value) {
    if (value >= 16 && value <= 26){
      _temperature = value;
    } else {
      print("Temperature must be between 16 and 26 °C.");
    }
  }
  
  bool get isEcoMode => _temperature < 20;

  @override
  void turnOn() {
    super.turnOn();
    print("Thermostat set to $temperature°C.");
  }
  @override
  void turnOff() {
    super.turnOff();
    print("Thermostat set OFF");
  }

  @override
  String printStatus() {
    if(isOn) {
      return "ON, $temperature °C, EcoMode: $isEcoMode";
    } else {
      return "OFF";
    }
  }

}