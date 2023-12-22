import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:teelead/Domain/api/Api.dart';
import 'package:teelead/Navigation/Navigate.dart';

class ProfileModel extends ChangeNotifier {
  String email = "";
  String fullName = "";
  String urlImage = "";

  ProfileModel() {
    _setup();
  }

  void _setup() async {
    getProfile();
  }

  void getProfile() async {
    final api = Api();
    const storage = FlutterSecureStorage();
    final token = await storage.read(key: "access");
    print(token);
    final profile = await api.getConcretUser(token!);
    email = profile.email;
    fullName = profile.fullname!;
    urlImage = profile.urlIcon!;
    notifyListeners();
  }

  void goToEditProfie(BuildContext context) {
    Navigator.of(context).pushNamed(NavigationPaths.editProfilePath);
  }

  void goToEditNotifications(BuildContext context) {
    Navigator.of(context).pushNamed(NavigationPaths.notificationsProfilePath);
  }

  void goToEditPayment(BuildContext context) {
    Navigator.of(context).pushNamed(NavigationPaths.paymentOptionPath);
  }

  void goToSecurity(BuildContext context) {
    Navigator.of(context).pushNamed(NavigationPaths.secureProfilePath);
  }

  void goToLanguage(BuildContext context) {
    Navigator.of(context).pushNamed(NavigationPaths.languagePath);
  }

  void goToTerms(BuildContext context) {
    Navigator.of(context).pushNamed(NavigationPaths.termsPath);
  }

  void goToInvite(BuildContext context) {
    Navigator.of(context).pushNamed(NavigationPaths.invitePath);
  }
}
