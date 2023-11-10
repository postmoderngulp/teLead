import 'package:flutter/widgets.dart';
import 'package:teelead/Navigation/Navigate.dart';

class profileInputModel extends ChangeNotifier{
  String email = "";
  String nickName ="";
  String fullName = "";
  String dob = "";
  int gender = -1;
  bool emailVailde = false;
  bool genderValide = false;

  void checkValid(String email) {
    emailVailde = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
    notifyListeners();
  }

  void setGenderValide() {
    gender != -1 ? genderValide = true : genderValide = false;
    notifyListeners();
  }

  void goToCreatePin(BuildContext context){
    Navigator.of(context).pushNamed(NavigationPaths.createPinPath);
  }
}