import 'package:flutter/material.dart';
import 'package:teelead/Navigation/Navigate.dart';

class homeModel extends ChangeNotifier {
  List<String> listCategories = [
    "3D Design",
    "Arts & Humanities",
    "Graphic Design"
  ];
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

  int valCategory = 0;
  int valCourses = 0;

  void setValCategories(int index) {
    valCategory = index;
    notifyListeners();
  }

  void setValCourses(int index) {
    valCourses = index;
    notifyListeners();
  }

  void goToNotificate(BuildContext context) {
    Navigator.of(context).pushNamed(NavigationPaths.notificate);
  }

  void goToCategory(BuildContext context) {
    Navigator.of(context).pushNamed(NavigationPaths.allCategoryPath);
  }

  void goToPopularCourses(BuildContext context) {
    Navigator.of(context).pushNamed(NavigationPaths.popularCoursesPath);
  }

  void goToTopMentors(BuildContext context) {
    Navigator.of(context).pushNamed(NavigationPaths.topMentorsPath);
  }
}
