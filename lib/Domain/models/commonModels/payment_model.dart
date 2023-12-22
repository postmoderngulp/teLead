import 'package:flutter/cupertino.dart';
import 'package:teelead/Navigation/Navigate.dart';

class PaymentOptionModel extends ChangeNotifier {
  void goToAddCard(BuildContext context) {
    Navigator.of(context).pushNamed(NavigationPaths.newCardPath);
  }
}
