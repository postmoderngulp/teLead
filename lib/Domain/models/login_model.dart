import 'package:flutter/material.dart';
import 'package:teelead/Navigation/Navigate.dart';

class loginModel extends ChangeNotifier {
  String email = "";
  String password = "";
  bool passwordVal = true;
  bool passwordCheck = true;
  bool emailVailde = false;
  bool forgotValide = false;

  void changeCheck() {
    passwordCheck = !passwordCheck;
    notifyListeners();
  }

  void goToProfile(BuildContext context) {
    Navigator.of(context).pushNamed(NavigationPaths.profilePath);
  }

  void checkValid(String email) {
    emailVailde = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
    notifyListeners();
  }

  void setForgotValide(bool value) {
    forgotValide = value;
    notifyListeners();
  }
}
