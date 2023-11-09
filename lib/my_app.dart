import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teelead/Navigation/Navigate.dart';
import 'package:teelead/Ui/Auth/sign_in.dart';

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    NavigateService navigateService = NavigateService();
    return  ScreenUtilInit(
      builder: (BuildContext context,child) =>  MaterialApp(
debugShowCheckedModeBanner: false,
        routes: navigateService.routes,
        initialRoute: navigateService.initRoute,
      ),
      designSize: const Size(428,926),
    );
  }
}
