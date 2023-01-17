import '../../global/constants/strings.dart';

class User {
  late String name;
  late String password;

  User(this.name, this.password);

  Map<String, dynamic> toJson() => {
        JsonConst.userKeyName: name,
        JsonConst.userKeypassword: password,
      };

  factory User.fromJson(Map<String, dynamic> json) {
    return User(json[JsonConst.userKeyName], json[JsonConst.userKeypassword]);
  }

  bool isEmpty() {
    return (name == JsonConst.emptyInputString &&
        password == JsonConst.emptyInputString);
  }

  bool isFull() {
    return (name != JsonConst.emptyInputString &&
        password != JsonConst.emptyInputString);
  }
}
