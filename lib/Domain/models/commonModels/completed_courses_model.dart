import 'package:flutter/cupertino.dart';
import 'package:teelead/Navigation/Navigate.dart';

class CompletedCoursesModel extends ChangeNotifier {
  void goToCertificate(BuildContext context) {
    Navigator.of(context).pushNamed(NavigationPaths.certificateCoursesPath);
  }
}
