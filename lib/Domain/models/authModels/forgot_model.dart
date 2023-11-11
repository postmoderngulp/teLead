import 'package:flutter/cupertino.dart';
import 'package:teelead/Navigation/Navigate.dart';

class forgotModel extends ChangeNotifier{
  void goToVerifyPassword (BuildContext context){
    Navigator.of(context).pushNamed(NavigationPaths.verifyForgotPasswordPath);
  }
}