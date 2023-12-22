import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:teelead/Style/colors.dart';
import 'package:teelead/Ui/Common/indox.dart';
import 'package:teelead/Ui/Common/my_courses.dart';
import 'package:teelead/Ui/Common/popularCourses.dart';
import 'package:teelead/Ui/Common/profile.dart';
import 'package:teelead/Ui/Common/transaction.dart';

class mainSreenCommon extends StatefulWidget {
  int selectIndex = 0;
  mainSreenCommon({super.key});

  @override
  State<mainSreenCommon> createState() => _mainSreenCompanyState();
}

class _mainSreenCompanyState extends State<mainSreenCommon> {
  final List<Widget> _tabs = [
    const PopularCoursesWidget(),
    const MyCourses(),
    const Indox(),
    const Transaction(),
    const Profile(),
  ];

  void tapBar(int index) {
    setState(() {
      widget.selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[widget.selectIndex],
      bottomNavigationBar: SizedBox(
        height: 78.h,
        child: BottomNavigationBar(
          unselectedLabelStyle: const TextStyle(color: Colors.black),
          backgroundColor: Colors.white,
          onTap: tapBar,
          currentIndex: widget.selectIndex,
          selectedItemColor: colorrs.darkGreenColor,
          unselectedItemColor: Colors.black,
          selectedLabelStyle: const TextStyle(color: colorrs.darkGreenColor),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                size: 25.w,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/image/my_courses.svg",
                  width: 25.w,
                  height: 25.h,
                ),
                label: 'My courses'),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/image/indox.svg",
                width: 25.w,
                height: 25.h,
              ),
              label: 'Indox',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/image/transaction.svg",
                width: 25.w,
                height: 25.h,
              ),
              label: 'Transaction',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/image/profiile_navigation.svg",
                width: 25.w,
                height: 25.h,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
