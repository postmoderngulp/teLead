import 'package:flutter/cupertino.dart';
import 'package:teelead/Navigation/Navigate.dart';

class CurriculcumModel extends ChangeNotifier {
  void goToPayment(BuildContext context) {
    Navigator.of(context).pushNamed(NavigationPaths.PaymentMethodsPath);
  }
}
