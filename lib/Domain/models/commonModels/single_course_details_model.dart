import 'package:flutter/cupertino.dart';
import 'package:teelead/Navigation/Navigate.dart';

class SingleCourseDetailsModel extends ChangeNotifier {
  bool isAbout = true;

  void setIsAbout(bool val) {
    isAbout = val;
    notifyListeners();
  }

  void goToReviews(BuildContext context) {
    Navigator.of(context).pushNamed(NavigationPaths.review);
  }
}
