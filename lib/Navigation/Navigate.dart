import 'package:flutter/cupertino.dart';
import 'package:teelead/Ui/Auth/create_new_password.dart';
import 'package:teelead/Ui/Auth/create_pin.dart';
import 'package:teelead/Ui/Auth/login.dart';
import 'package:teelead/Ui/Auth/profile_input.dart';
import 'package:teelead/Ui/Auth/register.dart';
import 'package:teelead/Ui/Auth/sign_in.dart';
import 'package:teelead/Ui/Auth/verify_forgot_password.dart';
import 'package:teelead/Ui/Common/invite_friends.dart';
import 'package:teelead/Ui/Common/language.dart';
import 'package:teelead/Ui/Common/onboard.dart';
import 'package:teelead/Ui/Common/search.dart';
import 'package:teelead/Ui/Common/all_category.dart';
import 'package:teelead/Ui/Common/certificate.dart';
import 'package:teelead/Ui/Common/chat.dart';
import 'package:teelead/Ui/Common/completed_courses.dart';
import 'package:teelead/Ui/Common/curriculcum.dart';
import 'package:teelead/Ui/Common/editProfile.dart';
import 'package:teelead/Ui/Common/filter.dart';
import 'package:teelead/Ui/Common/home.dart';
import 'package:teelead/Ui/Common/main_navigation.dart';
import 'package:teelead/Ui/Common/mentor.dart';
import 'package:teelead/Ui/Common/newCard.dart';
import 'package:teelead/Ui/Common/notification.dart';
import 'package:teelead/Ui/Common/notifications_setting.dart';
import 'package:teelead/Ui/Common/on_going_courses.dart';
import 'package:teelead/Ui/Common/payment.dart';
import 'package:teelead/Ui/Common/payment_methods.dart';
import 'package:teelead/Ui/Common/receipt.dart';
import 'package:teelead/Ui/Common/review.dart';
import 'package:teelead/Ui/Common/security.dart';
import 'package:teelead/Ui/Common/single_course_details.dart';
import 'package:teelead/Ui/Common/terms_conditions.dart';
import 'package:teelead/Ui/Common/top_mentors.dart';
import 'package:teelead/Ui/Common/write_review.dart';
import '../Ui/Auth/forgot_password.dart';
import '../Ui/Auth/set_finger_print.dart';

abstract class NavigationPaths {
  static const initPath = "/";

  static const forgotPasswordPath =
      "/signIn/registerPath/loginPath/forgotPasswordPath";
  static const verifyForgotPasswordPath =
      "/signIn/registerPath/loginPath/forgotPasswordPath/verifyForgotPasswordPath";
  static const createNewPasswordPath =
      "/signIn/registerPath/loginPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath";

  static const signInPath = "/signIn";
  static const registerPath = "/signIn/registerPath";
  static const loginPath = "/signIn/registerPath/loginPath";
  static const profilePath = "/signIn/registerPath/loginPath/profilePath";
  static const createPinPath =
      "/signIn/registerPath/loginPath/profilePath/createPinPath";
  static const setFingerPrintPath =
      "/signIn/registerPath/loginPath/profilePath/setFingerPrintPath";

  static const homePath =
      "/signIn/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath";
  static const notificate =
      "/signIn/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath/notificate";
  static const allCategoryPath =
      "/signIn/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath/allCategoryPath";
  static const popularCoursesPath =
      "/signIn/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath/allCategoryPath/popularCoursesPath";
  static const invitePath =
      "/signIn/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath/allCategoryPath/popularCoursesPath/invitePath";
  static const editProfilePath =
      "/signIn/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath/allCategoryPath/popularCoursesPath/editProfilePath";
  static const secureProfilePath =
      "/signIn/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath/allCategoryPath/popularCoursesPath/secureProfile";
  static const languagePath =
      "/signIn/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath/allCategoryPath/popularCoursesPath/language";
  static const termsPath =
      "/signIn/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath/allCategoryPath/popularCoursesPath/terms";
  static const paymentOptionPath =
      "/signIn/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath/allCategoryPath/popularCoursesPath/paymentOption";
  static const newCardPath =
      "/signIn/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath/allCategoryPath/popularCoursesPath/paymentOption/newCard";
  static const notificationsProfilePath =
      "/signIn/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath/allCategoryPath/popularCoursesPath/editNotificationsPath";
  static const chatCoursesPath =
      "/signIn/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath/allCategoryPath/popularCoursesPath/Transaction";
  static const transactionPath =
      "/signIn/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath/allCategoryPath/popularCoursesPath/chatCourses";
  static const ongoingCurriculcumCoursesPath =
      "/signIn/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath/allCategoryPath/popularCoursesPath/ongoingCurriculcumCoursesPath";
  static const completedCurriculcumCoursesPath =
      "/signIn/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath/allCategoryPath/popularCoursesPath/completedCurriculcumCoursesPath";
  static const certificateCoursesPath =
      "/signIn/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath/allCategoryPath/popularCoursesPath/completedCurriculcumCoursesPath/certificate";
  static const topMentorsPath =
      "/signIn/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath/allCategoryPath/popularCoursesPath/topMentorsPath";
  static const searchPath =
      "/signIn/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath/allCategoryPath/popularCoursesPath/topMentorsPath/searchPath";
  static const mentorPath =
      "/signIn/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath/allCategoryPath/popularCoursesPath/topMentorsPath/searchPath/mentor";
  static const filterPath =
      "/signIn/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath/allCategoryPath/popularCoursesPath/topMentorsPath/searchPath/filterPath";
  static const infoPath =
      "/signIn/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath/allCategoryPath/popularCoursesPath/topMentorsPath/searchPath/infoPath";
  static const curriculcumPath =
      "/signIn/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath/allCategoryPath/popularCoursesPath/topMentorsPath/searchPath/infoPath/curriculcumPath";
  static const PaymentMethodsPath =
      "/signIn/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath/allCategoryPath/popularCoursesPath/topMentorsPath/searchPath/infoPath/curriculcumPath/PaymentMethodsPath";
  static const review =
      "/signIn/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath/allCategoryPath/popularCoursesPath/topMentorsPath/searchPath/infoPath/review";
  static const writeReview =
      "/signIn/registerPath/loginPath/profilePath/setFingerPrintPath/forgotPasswordPath/verifyForgotPasswordPath/createNewPasswordPath/homePath/allCategoryPath/popularCoursesPath/topMentorsPath/searchPath/infoPath/review/writeReview";
}

class NavigateService {
  String initRoute = NavigationPaths.initPath;
  final routes = <String, Widget Function(BuildContext)>{
    NavigationPaths.initPath: (context) => const OnBoard(),
    NavigationPaths.signInPath: (context) => const SignIn(),
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
    NavigationPaths.popularCoursesPath: (context) => mainSreenCommon(),
    NavigationPaths.topMentorsPath: (context) => const topMentors(),
    NavigationPaths.searchPath: (context) => const Search(),
    NavigationPaths.filterPath: (context) => const Filter(),
    NavigationPaths.infoPath: (context) => const singleCourseDetails(),
    NavigationPaths.review: (context) => const Review(),
    NavigationPaths.writeReview: (context) => const WriteReviewWidget(),
    NavigationPaths.notificate: (context) => const NotificationWidget(),
    NavigationPaths.mentorPath: (context) => const Mentor(),
    NavigationPaths.curriculcumPath: (context) => const Curriculcum(),
    NavigationPaths.PaymentMethodsPath: (context) => const PaymentMethods(),
    NavigationPaths.completedCurriculcumCoursesPath: (context) =>
        const CompletedCourses(),
    NavigationPaths.ongoingCurriculcumCoursesPath: (context) =>
        const OnGoingCourses(),
    NavigationPaths.certificateCoursesPath: (context) => const Certificate(),
    NavigationPaths.chatCoursesPath: (context) => const Chat(),
    NavigationPaths.transactionPath: (context) => const Receipt(),
    NavigationPaths.editProfilePath: (context) => const EditProfile(),
    NavigationPaths.notificationsProfilePath: (context) =>
        const NotificationsSetting(),
    NavigationPaths.paymentOptionPath: (context) => const PaymentOption(),
    NavigationPaths.newCardPath: (context) => const NewCard(),
    NavigationPaths.secureProfilePath: (context) => const Security(),
    NavigationPaths.languagePath: (context) => const Language(),
    NavigationPaths.termsPath: (context) => const Terms(),
    NavigationPaths.invitePath: (context) => const InviteFriends(),
  };
}
