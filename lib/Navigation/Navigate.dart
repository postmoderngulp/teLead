import 'package:flutter/cupertino.dart';
import 'package:teelead/Ui/Auth/login.dart';
import 'package:teelead/Ui/Auth/profile_input.dart';
import 'package:teelead/Ui/Auth/register.dart';
import 'package:teelead/Ui/Auth/sign_in.dart';

abstract class NavigationPaths {
  static const initPath = "/";
  static const registerPath = "/registerPath";
  static const loginPath = "/registerPath/loginPath";
  static const profilePath = "/registerPath/loginPath/profilePath";
}

class NavigateService {
  String initRoute = NavigationPaths.initPath;
  final routes = <String, Widget Function(BuildContext)>{
    NavigationPaths.initPath: (context) => const SignIn(),
    NavigationPaths.registerPath: (context) => const Register(),
    NavigationPaths.loginPath: (context) => const Login(),
    NavigationPaths.profilePath: (context) => const profileInput(),
  };
}
