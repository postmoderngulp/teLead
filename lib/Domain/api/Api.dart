import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:teelead/Domain/Entity/bookmark.dart';
import 'package:teelead/Domain/Entity/course-benefit.dart';
import 'package:teelead/Domain/Entity/courseBody.dart';
import 'package:teelead/Domain/Entity/course_category.dart';
import 'package:teelead/Domain/Entity/course_category_mentor.dart';
import 'package:teelead/Domain/Entity/course_section.dart';
import 'package:teelead/Domain/Entity/profile.dart';
import 'package:teelead/Domain/Entity/section.dart';
import 'package:teelead/Domain/Entity/token.dart';

class Api {
  String host = "https://7931-176-28-64-201.ngrok-free.app";

  Future<token> signUp(String email, String password) async {
    var endPoint = Uri.parse('$host/api/signup');
    final headers = {
      'Content-Type': 'application/json-patch+json',
      'accept': 'text/plain'
    };
    final body = {"email": email, "password": password, "role": "Student"};
    final response =
        await http.post(endPoint, headers: headers, body: json.encode(body));
    print(response.body);
    print(response.statusCode);
    return token.fromJson(response.body);
  }

  Future<token> signIn(String email, String password) async {
    var endPoint = Uri.parse('$host/api/signin');
    final headers = {
      'Content-Type': 'application/json-patch+json',
      'accept': 'text/plain'
    };
    final body = {
      "email": email,
      "password": password,
    };
    final response =
        await http.post(endPoint, headers: headers, body: json.encode(body));
    print(response.body);
    print(response.statusCode);
    return token.fromJson(response.body);
  }

  void recoveryByEmail(String email) async {
    var endPoint = Uri.parse('$host/api/code/recovery');
    final headers = {
      'Content-Type': 'application/json-patch+json',
      'accept': '*/*'
    };
    final body = {"recoveryMethod": "Email", "value": email};
    final response =
        await http.post(endPoint, headers: headers, body: json.encode(body));
    print(response.body);
    print(response.statusCode);
  }

  void verifyByEmail(String email, String recoveryCode) async {
    var endPoint = Uri.parse('$host/api/code/verify');
    final headers = {
      'Content-Type': 'application/json-patch+json',
      'accept': '*/*'
    };
    final body = {"email": email, "recoveryCode": recoveryCode};
    final response =
        await http.post(endPoint, headers: headers, body: json.encode(body));
    print(response.body);
    print(response.statusCode);
  }

  void newPassword(
      String email, String recoveryCode, String newPassword) async {
    var endPoint = Uri.parse('$host/api/reset-password');
    final headers = {
      'Content-Type': 'application/json-patch+json',
      'accept': '*/*'
    };
    final body = {
      "email": email,
      "recoveryCode": recoveryCode,
      "newPassword": newPassword
    };
    final response =
        await http.post(endPoint, headers: headers, body: json.encode(body));
    print(response.body);
    print(response.statusCode);
  }

  void putConcretUser(String fullname, String nickname, String dob,
      String phone, String token, String gender) async {
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': token
    };
    final body = {
      "fullname": fullname,
      "nickname": nickname,
      "dob": dob,
      "phone": phone,
      "gender": gender
    };
    var endPoint = Uri.parse('$host/api/profile');
    final response =
        await http.put(endPoint, headers: headers, body: json.encode(body));
    print(response.statusCode);
    print(response.body);
  }

  Future<profile> getConcretUser(String token) async {
    final headers = {'accept': 'application/json', 'Authorization': token};
    var endPoint = Uri.parse('$host/api/profile');
    final response = await http.get(endPoint, headers: headers);
    print(response.body);
    print(response.statusCode);
    return profile.fromJson(response.body);
  }

  void loadicon(String token, File? imageFile) async {
    var request =
        http.MultipartRequest('POST', Uri.parse('$host/api/upload/profile'));
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': token
    };
    var multipartFile =
        await http.MultipartFile.fromPath('image', imageFile!.path);
    request.files.add(multipartFile);
    request.headers.addAll(headers);
    final response = await request.send();
    print(response.statusCode);
  }

  void loadIconCategoryCourse(String id, File? imageFile) async {
    var request = http.MultipartRequest(
        'POST', Uri.parse('$host/api/upload/course-category/$id'));
    final headers = {
      'Content-Type': 'application/json',
    };
    var multipartFile =
        await http.MultipartFile.fromPath('image', imageFile!.path);
    request.files.add(multipartFile);
    request.headers.addAll(headers);
    final response = await request.send();
    print(response.statusCode);
  }

  void loadIconBenefitCourse(String id, File? imageFile) async {
    var request = http.MultipartRequest(
        'POST', Uri.parse('$host/api/upload/course-benefit/$id'));
    final headers = {
      'Content-Type': 'application/json',
    };
    var multipartFile =
        await http.MultipartFile.fromPath('image', imageFile!.path);
    request.files.add(multipartFile);
    request.headers.addAll(headers);
    final response = await request.send();
    print(response.statusCode);
  }

  void loadIconSectionModule(String id, File? imageFile) async {
    var request = http.MultipartRequest(
        'POST', Uri.parse('$host/api/upload/section-module/$id'));
    final headers = {
      'Content-Type': 'application/json',
    };
    var multipartFile =
        await http.MultipartFile.fromPath('image', imageFile!.path);
    request.files.add(multipartFile);
    request.headers.addAll(headers);
    final response = await request.send();
    print(response.statusCode);
  }

  void loadIconCourse(String id, File? imageFile) async {
    var request =
        http.MultipartRequest('POST', Uri.parse('$host/api/upload/course/$id'));
    final headers = {
      'Content-Type': 'application/json',
    };
    var multipartFile =
        await http.MultipartFile.fromPath('image', imageFile!.path);
    request.files.add(multipartFile);
    request.headers.addAll(headers);
    final response = await request.send();
    print(response.statusCode);
  }

  void getIconCourse(String fileName) async {
    final headers = {
      'Content-Type': 'application/json',
    };
    var endPoint = Uri.parse('$host/api/upload/course/$fileName');
    final response = await http.get(endPoint, headers: headers);
    print(response.statusCode);
    print(response.body);
  }

  void getIconProfile(String fileName) async {
    final headers = {'accept': 'text/plain'};
    var endPoint = Uri.parse('$host/api/upload/profile/$fileName');
    final response = await http.get(endPoint, headers: headers);
    print(response.statusCode);
    print(response.body);
  }

  void createBookMark(String code, String token) async {
    var endPoint = Uri.parse('$host/api/bookmark');
    final headers = {
      'Content-Type': 'application/json-patch+json',
      'Authorization': token
    };
    final body = {
      "courseId": code,
    };
    final response =
        await http.post(endPoint, headers: headers, body: json.encode(body));
    print(response.body);
    print(response.statusCode);
  }

  Future<List<bookmark>> getBookmarks(String token) async {
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': token
    };
    final body = {"count": 2147483647, "loadPosition": 2147483647};
    var endPoint = Uri.parse('$host/api/bookmarks');
    final response = await http.post(endPoint, headers: headers, body: body);
    final list = json.decode(response.body);
    List<bookmark> bookmarks = [];
    for (Map<String, dynamic> element in list) {
      bookmarks.add(bookmark.fromMap(element));
    }
    print(response.body);
    print(response.statusCode);
    return bookmarks;
  }

  Future<List<bookmark>> getBookmarksById(
      String token, String categoryId) async {
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': token,
    };
    final body = {"count": 2147483647, "loadPosition": 2147483647};
    var endPoint = Uri.parse('$host/api/bookmarks/filter/$categoryId');
    final response = await http.post(endPoint, headers: headers, body: body);
    final list = json.decode(response.body);
    List<bookmark> bookmarks = [];
    for (Map<String, dynamic> element in list) {
      bookmarks.add(bookmark.fromMap(element));
    }
    print(response.body);
    print(response.statusCode);
    return bookmarks;
  }

  void deleteBookmark(String categoryId) async {
    final headers = {
      'Content-Type': 'application/json',
      'categoryId': categoryId,
    };
    var endPoint = Uri.parse('$host/api/bookmark/$categoryId');
    final response = await http.delete(endPoint, headers: headers);
    print(response.body);
    print(response.statusCode);
  }

  void createCourse(String token) async {
    final headers = {
      'Content-Type': 'application/json-patch+json',
      'Authorization': token
    };
    var endPoint = Uri.parse('$host/api/course');
    final body = jsonEncode({
      "name": "Learn programming",
      "description":
          "Computer programming, also known as coding, is the process of creating instructions and algorithms that tell a computer what to do. It involves writing code in a language that the computer can understand, such as C++, Java, or Python. Programming is used in all aspects of computing, from website design to embedded systems in medical devices.",
      "price": 0,
      "courseCategoryId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "costType": "Free",
      "formatType": "Online",
      "levelType": "Beginner",
      "courseBenefits": []
    });
    final response = await http.post(endPoint, body: body, headers: headers);
    print(response.body);
    print(response.statusCode);
  }

  void createCourseBenefit(String name) async {
    final headers = {
      'Content-Type': 'application/json',
    };
    var endPoint = Uri.parse('$host/api/course-benefit');
    final body = {
      "name": name,
    };
    final response = await http.post(endPoint, body: body, headers: headers);
    print(response.body);
    print(response.statusCode);
  }

  Future<List<CourseBenefit>> getCourseBenefits(
      String name, int count, int loadPosition) async {
    final headers = {
      'Content-Type': 'application/json',
    };
    final body = {"count": count, "loadPosition": loadPosition};
    var endPoint = Uri.parse('$host/api/course-benefits');
    final response = await http.post(endPoint, headers: headers, body: body);
    List<CourseBenefit> benefits = [];
    final list = json.decode(response.body);
    for (Map<String, dynamic> element in list) {
      benefits.add(CourseBenefit.fromMap(element));
    }
    print(response.body);
    print(response.statusCode);
    return benefits;
  }

  Future<CourseBody> getTag(String id) async {
    final headers = {
      'Content-Type': 'application/json',
    };
    var endPoint = Uri.parse('$host/api/course/$id');
    final response = await http.get(endPoint, headers: headers);
    print(response.body);
    print(response.statusCode);
    return CourseBody.fromJson(response.body);
  }

  Future<List<CourseBody>> getCourseByFilter(
      List<String> costTypes,
      List<String> formatTypes,
      List<String> difficultLevels,
      List<String> categoryIds,
      int minimumRating,
      int count,
      int countSkipped) async {
    final headers = {
      'Content-Type': 'application/json',
    };
    var endPoint = Uri.parse('$host/api/courses');
    final body = {
      "costTypes": costTypes,
      "formatTypes": formatTypes,
      "difficultLevels": difficultLevels,
      "categoryIds": categoryIds,
      "minimumRating": minimumRating,
      "count": count,
      "countSkipped": countSkipped
    };
    final response = await http.post(endPoint, headers: headers, body: body);
    List<CourseBody> courses = [];
    final list = json.decode(response.body);
    for (Map<String, dynamic> element in list) {
      courses.add(CourseBody.fromMap(element));
    }
    print(response.body);
    print(response.statusCode);
    return courses;
  }

  Future<List<courseCategory>> getCoursesCategoryByName(
      String patternName, int count, int loadPosition) async {
    final headers = {
      'Content-Type': 'application/json',
    };
    var endPoint = Uri.parse('$host/api/course-category/filter/$patternName');
    final body = {"count": count, "loadPosition": loadPosition};
    final response = await http.post(endPoint, headers: headers, body: body);
    List<courseCategory> CourseCategory = [];
    final list = json.decode(response.body);
    for (Map<String, dynamic> element in list) {
      CourseCategory.add(courseCategory.fromMap(element));
    }
    print(response.body);
    print(response.statusCode);
    return CourseCategory;
  }

  Future<courseCategory> getCourseCategoryByName(String patternName) async {
    final headers = {
      'Content-Type': 'application/json',
    };
    var endPoint = Uri.parse('$host/api/course-category/$patternName');
    final response = await http.get(
      endPoint,
      headers: headers,
    );
    print(response.body);
    print(response.statusCode);
    return courseCategory.fromJson(response.body);
  }

  Future<CourseCategoryMentor> getCourseCategoryMentors(
      String patternName, String categoryName) async {
    final headers = {
      'Content-Type': 'application/json',
      'accept': 'text/plain'
    };
    var endPoint = Uri.parse(
        '$host/api/course-category/filter/mentors/$patternName?categoryName=$categoryName');
    final response = await http.get(
      endPoint,
      headers: headers,
    );
    print(response.body);
    print(response.statusCode);
    return CourseCategoryMentor.fromJson(response.body);
  }

  Future<List<courseCategory>> getListCoursesCategory(
      int count, int loadPosition) async {
    final headers = {
      'Content-Type': 'application/json',
    };
    var endPoint = Uri.parse('$host/api/course-categories');
    final body = {"count": count, "loadPosition": loadPosition};
    final response = await http.post(endPoint, headers: headers, body: body);
    List<courseCategory> CourseCategory = [];
    final list = json.decode(response.body);
    for (Map<String, dynamic> element in list) {
      CourseCategory.add(courseCategory.fromMap(element));
    }
    print(response.body);
    print(response.statusCode);
    return CourseCategory;
  }

  void createCourseCategory(String name) async {
    final headers = {
      'accept': '*/*',
      'Content-Type': 'application/json-patch+json'
    };
    var endPoint = Uri.parse('$host/api/course-category');
    final body = jsonEncode({"name": name});
    final response = await http.post(endPoint, headers: headers, body: body);
    print(response.body);
    print(response.statusCode);
  }

  void createCourseSection(String name, String courseId) async {
    final headers = {
      'Content-Type': 'application/json',
    };
    var endPoint = Uri.parse('$host/api/course-section');
    final body = {"name": name, "courseId": courseId};
    final response = await http.post(endPoint, headers: headers, body: body);
    print(response.body);
    print(response.statusCode);
  }

  Future<CourseSection> getCourseSectionById(String courseId) async {
    final headers = {
      'Content-Type': 'application/json',
    };
    var endPoint = Uri.parse('$host/api/course-section/$courseId');
    final response = await http.get(
      endPoint,
      headers: headers,
    );
    print(response.body);
    print(response.statusCode);

    print(response.body);
    print(response.statusCode);
    return CourseSection.fromJson(response.body);
  }

  Future<List<CourseSection>> getListCourseSectionById(String courseId) async {
    final headers = {
      'Content-Type': 'application/json',
    };
    var endPoint = Uri.parse('$host/api/course-sections/$courseId');
    final response = await http.get(
      endPoint,
      headers: headers,
    );
    print(response.body);
    print(response.statusCode);
    List<CourseSection> courseSection = [];
    final list = json.decode(response.body);
    for (Map<String, dynamic> element in list) {
      courseSection.add(CourseSection.fromMap(element));
    }
    print(response.body);
    print(response.statusCode);
    return courseSection;
  }

  Future<Section> createSectionModule(
      String name, String courseSectionId) async {
    final headers = {
      'Content-Type': 'application/json',
    };
    final body = {"name": name, "courseSectionId": courseSectionId};
    var endPoint = Uri.parse('$host/api/section-module');
    final response = await http.post(endPoint, headers: headers, body: body);
    print(response.body);
    print(response.statusCode);
    return Section.fromJson(response.body);
  }
}
