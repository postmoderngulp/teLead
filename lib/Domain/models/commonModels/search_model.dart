import 'package:flutter/cupertino.dart';
import 'package:teelead/Navigation/Navigate.dart';

class searchModel extends ChangeNotifier {
  bool isCoursePath = true;

  searchModel(int arg) {
    arg == 0 ? isCoursePath = true : isCoursePath = false;
  }

  void setCoursePath(bool val) {
    isCoursePath = val;
    notifyListeners();
  }

  void goToFilter(BuildContext context) {
    Navigator.of(context).pushNamed(NavigationPaths.filterPath);
  }

  void goToInfoCourse(BuildContext context) {
    Navigator.of(context).pushNamed(NavigationPaths.infoPath);
  }
}
