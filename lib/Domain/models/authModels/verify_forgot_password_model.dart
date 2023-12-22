import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:teelead/Domain/api/Api.dart';
import 'package:teelead/Navigation/Navigate.dart';

class verifyForgotPasswordModel extends ChangeNotifier {
  String securePassword = "";

  late Timer _timer;
  int sec = 60;

  verifyForgotPasswordModel() {
    timeSec();
  }

  void setPassword(String number, String email, BuildContext context) {
    securePassword += number;
    if (securePassword.length == 6) {
      final api = Api();
      api.verifyByEmail(email, securePassword);
      Navigator.of(context).pushNamed(NavigationPaths.createNewPasswordPath,
          arguments: [email, securePassword]);
    }
    notifyListeners();
  }

  void goToCreateNewPassword(BuildContext context) async {
    Navigator.of(context).pushNamed(NavigationPaths.createNewPasswordPath);
  }

  void timeSec() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      sec--;
      if (sec == 0) {
        sec = 60;
      }
      notifyListeners();
    });
  }
}
