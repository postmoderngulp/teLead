import 'package:flutter/cupertino.dart';
import 'package:teelead/Navigation/Navigate.dart';

class myCoursesModel extends ChangeNotifier {
  bool isCompletedPath = true;
  double percent = 0.9;

  void setCompleted(bool val) {
    isCompletedPath = val;
    notifyListeners();
  }

  void goToCompletedCurriculcum(BuildContext context) {
    Navigator.of(context)
        .pushNamed(NavigationPaths.completedCurriculcumCoursesPath);
  }

  void goToOngoingCurriculcum(BuildContext context) {
    Navigator.of(context)
        .pushNamed(NavigationPaths.ongoingCurriculcumCoursesPath);
  }
}
