import 'smart_device.dart';

class Alarm extends SmartDevice{
  void triggerAlarm(){
    if(!isOn){
      print('Alarm triggered!');
    } else {
      print('Alarm is desactived');
    }
  }

  @override
  void turnOn() {
    super.turnOn();
    print('Alarm turned on.');
  }

  @override
  void turnOff() {
    super.turnOff();
    print('Alarm turned off.');
  }

  @override
  String printStatus() {
    if(isOn) {
      return "ON";
    } else {
      return "OFF - Triggering emergency signal!";
    }
  }
}