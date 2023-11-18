import 'package:flutter/cupertino.dart';
import 'package:teelead/Ui/Auth/create_new_password.dart';
import 'package:teelead/Ui/Auth/create_pin.dart';
import 'package:teelead/Ui/Auth/login.dart';
import 'package:teelead/Ui/Auth/profile_input.dart';
import 'package:teelead/Ui/Auth/register.dart';
import 'package:teelead/Ui/Auth/sign_in.dart';
import 'package:teelead/Ui/Auth/verify_forgot_password.dart';
import 'package:teelead/Ui/Common/Search.dart';
import 'package:teelead/Ui/Common/all_category.dart';
import 'package:teelead/Ui/Common/filter.dart';
import 'package:teelead/Ui/Common/home.dart';
import 'package:teelead/Ui/Common/review.dart';
import 'package:teelead/Ui/Common/single_course_details.dart';
import 'package:teelead/Ui/Common/top_mentors.dart';
import 'package:teelead/Ui/Common/write_review.dart';
import '../Ui/Auth/forgot_password.dart';
import '../Ui/Auth/set_finger_print.dart';
import '../Ui/Common/popularCourses.dart';

abstract class NavigationPaths {
  static const initPath = "/";
  static const registerPath = "/registerPath";
  static const loginPath = "/registerPath/loginPath";
  static const profilePath = "/registerPath/loginPath/profilePath";
  static const createPinPath =
      "/registerPath/loginPath/profilePath/createPinPath";
  static const setFingerPrintPath =
      "/registerPath/loginPath/profilePath/setFingerPrintPath";
  static const forgotPasswordPath =
      "/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath";
  static const verifyForgotPasswordPath =
      "/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath";
  static const createNewPasswordPath =
      "/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath";
  static const homePath =
      "/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath";
  static const allCategoryPath =
      "/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath/allCategoryPath";
  static const popularCoursesPath =
      "/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath/allCategoryPath/popularCoursesPath";
  static const topMentorsPath =
      "/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath/allCategoryPath/popularCoursesPath/topMentorsPath";
  static const searchPath =
      "/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath/allCategoryPath/popularCoursesPath/topMentorsPath/searchPath";
  static const filterPath =
      "/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath/allCategoryPath/popularCoursesPath/topMentorsPath/searchPath/filterPath";
  static const infoPath =
      "/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath/allCategoryPath/popularCoursesPath/topMentorsPath/searchPath/infoPath";
  static const review =
      "/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath/allCategoryPath/popularCoursesPath/topMentorsPath/searchPath/infoPath/review";
       static const writeReview =
      "/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath/allCategoryPath/popularCoursesPath/topMentorsPath/searchPath/infoPath/review/writeReview";
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
    NavigationPaths.verifyForgotPasswordPath: (context) =>
        const verifyForgotPassword(),
    NavigationPaths.createNewPasswordPath: (context) =>
        const createNewPassword(),
    NavigationPaths.homePath: (context) => const Home(),
    NavigationPaths.allCategoryPath: (context) => const allCategory(),
    NavigationPaths.popularCoursesPath: (context) =>
        const PopularCoursesWidget(),
    NavigationPaths.topMentorsPath: (context) => const topMentors(),
    NavigationPaths.searchPath: (context) => const Search(),
    NavigationPaths.filterPath: (context) => const Filter(),
    NavigationPaths.infoPath: (context) => const singleCourseDetails(),
    NavigationPaths.review: (context) => const Review(),
    NavigationPaths.writeReview: (context) => const WriteReviewWidget(),
  };
}
