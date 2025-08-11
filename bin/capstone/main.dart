// main.dart
import 'smart_home_controller.dart';
import 'light.dart';
import 'thermostat.dart';
import 'alarm.dart';

void main() {
  SmartHomeController controller = SmartHomeController();

  Light light = Light();
  Thermostat thermostat = Thermostat();
  Alarm alarm = Alarm();

  controller.addDevice(light);
  controller.addDevice(thermostat);
  controller.addDevice(alarm);

  light.turnOn();
  thermostat.turnOn();
  thermostat.temperature = 22;
  alarm.triggerAlarm();

  print("\n--- Full Status Report ---");
  controller.runDiagnostics();
}
