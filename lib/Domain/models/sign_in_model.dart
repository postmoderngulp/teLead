import 'package:flutter/cupertino.dart';
import 'package:teelead/Navigation/Navigate.dart';

class signInModel extends ChangeNotifier {
  void goToRegistr(BuildContext context) {
    Navigator.of(context).pushNamed(NavigationPaths.registerPath);
  }
}
