import 'package:flutter/material.dart';
import 'package:teelead/Navigation/Navigate.dart';

class registerModel extends ChangeNotifier {
  String email = "";
  String password = "";
  bool passwordVal = true;
  bool passwordCheck = true;
  bool emailVailde = false;

  void changeCheck() {
    passwordCheck = !passwordCheck;
    notifyListeners();
  }

  void goToLogin(BuildContext context) {
    Navigator.of(context).pushNamed(NavigationPaths.loginPath);
  }

  void checkValid(String email) {
    emailVailde = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
    notifyListeners();
  }
}
