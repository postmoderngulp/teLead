import 'package:flutter/cupertino.dart';
import 'package:teelead/Navigation/Navigate.dart';

class transactionModel extends ChangeNotifier {
  void goToReceipt(BuildContext context) {
    Navigator.of(context).pushNamed(NavigationPaths.transactionPath);
  }
}
