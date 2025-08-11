import 'smart_device.dart';

class SmartHomeController {
  List<SmartDevice> _devices = [];

  void addDevice(SmartDevice device) {
    _devices.add(device);
  }

  void runDiagnostics() {
    for (var device in _devices) {
      print('${device.runtimeType}: ${device.printStatus()}');
    }
  }
}