import 'package:flutter/widgets.dart';
import 'package:teelead/Navigation/Navigate.dart';

class createPinModel extends ChangeNotifier {
  String securePassword = "";

  void goToSetFingerPrint(BuildContext context) {
    Navigator.of(context).pushNamed(NavigationPaths.setFingerPrintPath);
  }

  void setPassword(String element, BuildContext context) {
    securePassword += element;
    notifyListeners();
    if (securePassword.length == 4) {
      goToSetFingerPrint(context);
    }
  }
}
