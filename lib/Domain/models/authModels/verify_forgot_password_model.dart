import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:teelead/Navigation/Navigate.dart';

class verifyForgotPasswordModel extends ChangeNotifier {
  late Timer _timer;
  int sec = 60;

  verifyForgotPasswordModel(){
    timeSec();
  }

  void goToCreateNewPassword(BuildContext context){
    Navigator.of(context).pushNamed(NavigationPaths.createNewPasswordPath);
  }

  void timeSec() {
    _timer =  Timer.periodic(const Duration(seconds: 1), (timer) {
      sec--;
      if(sec==0){
        sec = 60;
      }
      notifyListeners();
    });
  }
}