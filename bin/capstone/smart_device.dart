abstract class SmartDevice{
  bool _isOn = false;

  bool get isOn => _isOn;

  void turnOn(){
    _isOn = true;
  }
  void turnOff(){
    _isOn = false;
  }
  
  String printStatus(){
    return  _isOn ? "ON" : "OFF";
  }
}