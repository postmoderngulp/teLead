import 'package:flutter/cupertino.dart';
import 'package:teelead/Navigation/Navigate.dart';

class IndoxModel extends ChangeNotifier {
  bool isChat = true;

  void setChat(bool val) {
    isChat = val;
    notifyListeners();
  }

  void goToChat(BuildContext context) {
    Navigator.of(context).pushNamed(NavigationPaths.chatCoursesPath);
  }
}
