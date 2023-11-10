import 'package:flutter/cupertino.dart';
import 'package:teelead/Navigation/Navigate.dart';

class SetFingerPrintModel extends ChangeNotifier{

  void goToForgotPassword(BuildContext context){
    Navigator.of(context).pushNamed(NavigationPaths.forgotPasswordPath);
  }
}