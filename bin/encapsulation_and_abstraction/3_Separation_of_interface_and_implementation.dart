class User {
  final Map<String,dynamic> _data = {};

  setName(String name) {
    _data.addAll({"name": name});
  }

  String getName(){
    if (_data.containsKey("name")) {
      return _data["name"];
    }
    return "Name not set";
  }
}

void main(){
  User user = User();
  print(user.getName());
  user.setName("Alice");
  print(user.getName());
}