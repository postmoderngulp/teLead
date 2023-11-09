
import 'package:flutter/cupertino.dart';
import 'package:teelead/Ui/Auth/register.dart';
import 'package:teelead/Ui/Auth/sign_in.dart';

abstract class NavigationPaths{
  static const initPath = "/";
  static const registerPath = "/registerPath";

}

class NavigateService{
  String initRoute = NavigationPaths.initPath;
  final routes = <String, Widget Function(BuildContext)>{
    NavigationPaths.initPath: (context) => const SignIn(),
    NavigationPaths.registerPath: (context) => const Register(),
  };
}