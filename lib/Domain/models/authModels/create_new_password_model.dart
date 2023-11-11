import 'package:flutter/cupertino.dart';
import 'package:teelead/Navigation/Navigate.dart';

class createNewPasswordModel extends ChangeNotifier{
  String password = "";
  String confirmPassword = "";
  bool confirmPasswordCheck = true;
  bool passwordCheck = true;


  void goToHome(BuildContext context){
    Navigator.of(context).pushNamed(NavigationPaths.homePath);
  }

  void changeCheck() {
    passwordCheck = !passwordCheck;
    notifyListeners();
  }

  void confirmChangeCheck() {
    confirmPasswordCheck = !confirmPasswordCheck;
    notifyListeners();
  }
}