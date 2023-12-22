import 'package:flutter/cupertino.dart';

class MentorModel extends ChangeNotifier {
  bool isCourses = true;

  void setisCourses(bool val) {
    isCourses = val;
    notifyListeners();
  }
}
