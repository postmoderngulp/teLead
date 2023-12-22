import 'package:flutter/cupertino.dart';
import 'package:teelead/Domain/api/Api.dart';
import 'package:teelead/Navigation/Navigate.dart';

class createNewPasswordModel extends ChangeNotifier {
  String password = "";
  String confirmPassword = "";
  bool confirmPasswordCheck = true;
  bool passwordCheck = true;

  void changePassword(String email, String recoveryCode, String newPassword,
      BuildContext context) async {
    final api = Api();
    api.newPassword(email, recoveryCode, newPassword);
    Navigator.of(context).pushNamed(NavigationPaths.loginPath);
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
