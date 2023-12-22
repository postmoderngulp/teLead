import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:teelead/Domain/api/Api.dart';
import 'package:teelead/Navigation/Navigate.dart';

class loginModel extends ChangeNotifier {
  String email = "";
  String password = "";
  bool passwordCheck = true;
  bool emailVailde = false;
  bool forgotValide = false;

  void changeCheck() {
    passwordCheck = !passwordCheck;
    notifyListeners();
  }

  void signIn(String email, String password, BuildContext context) async {
    final api = Api();
    final token = await api.signIn(email, password);
    const storage = FlutterSecureStorage();
    await storage.write(key: "refresh", value: token.refreshToken);
    await storage.write(key: "access", value: token.accessToken);
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
