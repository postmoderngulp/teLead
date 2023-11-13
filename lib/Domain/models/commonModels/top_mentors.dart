import 'package:flutter/cupertino.dart';

import '../../../Navigation/Navigate.dart';

class topMentorsModel extends ChangeNotifier{

  void goToSearchMentors(BuildContext context){
    Navigator.of(context).pushNamed(NavigationPaths.searchPath);
  }
}