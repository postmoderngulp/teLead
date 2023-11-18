import 'package:flutter/material.dart';
import 'package:teelead/Navigation/Navigate.dart';

class popularCoursesModel extends ChangeNotifier {
  List<String> listCourses = [
    "All",
    "3D Design",
    "Graphic Design",
    "Web Design",
    "SEO & Marketing",
    "Finance & Accounting",
    "Personal Development",
    "Office Productivity",
    "HR Management"
  ];
  int valCourses = 0;

  void setValCourses(int index) {
    valCourses = index;
    notifyListeners();
  }

  void goToSearchCourses(BuildContext context) {
    Navigator.of(context).pushNamed(NavigationPaths.searchPath, arguments: 0);
  }
}
