import 'package:flutter/cupertino.dart';
import 'package:teelead/Domain/api/Api.dart';
import 'package:teelead/Navigation/Navigate.dart';

class forgotModel extends ChangeNotifier {
  String email = "";

  void goToVerifyPassword(String email, BuildContext context) async {
    final api = Api();
    api.recoveryByEmail(email);
    Navigator.of(context)
        .pushNamed(NavigationPaths.verifyForgotPasswordPath, arguments: email);
  }
}
