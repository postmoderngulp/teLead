import 'package:flutter/widgets.dart';
import 'package:teelead/Navigation/Navigate.dart';

class createPinModel extends ChangeNotifier{

  void goToSetFingerPrint(BuildContext context){
    Navigator.of(context).pushNamed(NavigationPaths.setFingerPrintPath);
  }
}