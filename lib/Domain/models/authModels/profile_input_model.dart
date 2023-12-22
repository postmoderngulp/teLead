import 'dart:io';
import 'package:flutter/widgets.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:teelead/Domain/api/Api.dart';
import 'package:teelead/Navigation/Navigate.dart';
import 'package:image_picker/image_picker.dart';

class profileInputModel extends ChangeNotifier {
  String nickName = "";
  String fullName = "";
  String dob = "";
  String phone = "";
  String gender = "";
  File? avatar;

  void putProfile(String fullname, String nickname, String phone, String dob,
      String gender, BuildContext context, File? file) async {
    final api = Api();
    const storage = FlutterSecureStorage();
    final accessToken = await storage.read(key: "access");
    api.putConcretUser(fullname, nickname, dob, phone, accessToken!, gender);
    api.loadicon(accessToken!, file);
    Navigator.of(context).pushNamed(NavigationPaths.createPinPath);
  }

  Future pickImage() async {
    final imagePicker = ImagePicker();
    final image = await imagePicker.pickImage(source: ImageSource.gallery);
    avatar = image?.path == null && avatar?.path != null
        ? avatar
        : File("${image?.path}");
    notifyListeners();
  }
}
