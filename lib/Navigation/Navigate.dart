

import 'package:flutter/cupertino.dart';
import 'package:teelead/Ui/Auth/create_new_password.dart';
import 'package:teelead/Ui/Auth/create_pin.dart';
import 'package:teelead/Ui/Auth/login.dart';
import 'package:teelead/Ui/Auth/profile_input.dart';
import 'package:teelead/Ui/Auth/register.dart';
import 'package:teelead/Ui/Auth/sign_in.dart';
import 'package:teelead/Ui/Auth/verify_forgot_password.dart';
import 'package:teelead/Ui/Common/home.dart';

import '../Ui/Auth/forgot_password.dart';
import '../Ui/Auth/set_finger_print.dart';

abstract class NavigationPaths {
  static const initPath = "/";
  static const registerPath = "/registerPath";
  static const loginPath = "/registerPath/loginPath";
  static const profilePath = "/registerPath/loginPath/profilePath";
  static const createPinPath = "/registerPath/loginPath/profilePath/createPinPath";
  static const setFingerPrintPath = "/registerPath/loginPath/profilePath/setFingerPrintPath";
  static const forgotPasswordPath = "/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath";
  static const verifyForgotPasswordPath = "/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath";
  static const createNewPasswordPath = "/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath";
  static const homePath = "/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath";
}

class NavigateService {
  String initRoute = NavigationPaths.initPath;
  final routes = <String, Widget Function(BuildContext)>{
    NavigationPaths.initPath: (context) => const SignIn(),
    NavigationPaths.registerPath: (context) => const Register(),
    NavigationPaths.loginPath: (context) => const Login(),
    NavigationPaths.profilePath: (context) => const profileInput(),
    NavigationPaths.createPinPath: (context) => const createPin(),
    NavigationPaths.setFingerPrintPath: (context) => const setFingerPrint(),
    NavigationPaths.forgotPasswordPath: (context) => const ForgotPassword(),
    NavigationPaths.verifyForgotPasswordPath: (context) => const verifyForgotPassword(),
    NavigationPaths.createNewPasswordPath: (context) => const createNewPassword(),
    NavigationPaths.homePath: (context) => const Home(),
  };
}
