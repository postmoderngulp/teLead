import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:teelead/Domain/api/Api.dart';

class EditProfileModel extends ChangeNotifier {
  String url = "";
  String fullName = "";
  String nickName = "";
  String dob = "";
  String email = "";
  String phone = "";
  String gender = "";
  String role = "";
  File? file;

  EditProfileModel() {}

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
    nickName = profile.nickname!;
    dob = profile.dob!;
    phone = profile.phone!;
    gender = profile.dob!;
    role = profile.role;
    url = profile.urlIcon!;
    notifyListeners();
  }

  void putProfile(
    String fullname,
    String nickname,
    String dob,
    String phone,
    String gender,
  ) async {
    final api = Api();
    const storage = FlutterSecureStorage();
    final token = await storage.read(key: "access");
    if (file != null) api.loadicon(token!, file);
    api.putConcretUser(fullname, nickname, dob, phone, token!, gender);
    _setup();
  }

  Future pickImage() async {
    final imagePicker = ImagePicker();
    final image = await imagePicker.pickImage(source: ImageSource.gallery);
    file = image?.path == null && file?.path != null
        ? file
        : File("${image?.path}");
    notifyListeners();
  }
}
