import 'package:flutter/cupertino.dart';
import 'package:teelead/Navigation/Navigate.dart';

class reviewModel extends ChangeNotifier {
  List<String> listRatings = [
    "Excellect",
    "Good",
    "Average",
    "Below Average",
  ];

  int valCourses = 0;

  void setValCourses(int index) {
    valCourses = index;
    notifyListeners();
  }

  void goToWriteReview(BuildContext context) {
    Navigator.of(context).pushNamed(NavigationPaths.writeReview);
  }
}
