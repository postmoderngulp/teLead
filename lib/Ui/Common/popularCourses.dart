import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Style/colors.dart';
import 'package:teelead/Style/text_style.dart';
import '../../Domain/models/commonModels/popular_courses_model.dart';

class PopularCoursesWidget extends StatelessWidget {
  const PopularCoursesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => popularCoursesModel(),
      child: const subPopularCourses(),
    );
  }
}

class subPopularCourses extends StatelessWidget {
  const subPopularCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: colorrs.backgroundColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 25.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 34.w),
              child: const titleCourses(),
            ),
            SizedBox(
              height: 36.h,
            ),
            const listCoursesButton(),
            SizedBox(
              height: 25.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 34.w),
              child: const listCourses(),
            ),
          ],
        ),
      ),
    ));
  }
}

class titleCourses extends StatelessWidget {
  const titleCourses({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<popularCoursesModel>();
    return Row(
      children: [
        GestureDetector(
          child: SvgPicture.asset(
            "assets/image/backArrow.svg",
            width: 26.w,
            height: 20.h,
          ),
          onTap: () => Navigator.of(context).pop(),
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(
          "Popular Courses",
          style: textStyle.titleStyle,
        ),
        const Spacer(),
        GestureDetector(
          child: SvgPicture.asset(
            "assets/image/search.svg",
            width: 20.w,
            height: 20.h,
          ),
          onTap: () => model.goToSearchCourses(context),
        ),
      ],
    );
  }
}

class listCoursesButton extends StatelessWidget {
  const listCoursesButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<popularCoursesModel>();
    return SizedBox(
      height: 30.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: model.listCourses.length,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: index != 0 && index != model.listCourses.length
              ? EdgeInsets.symmetric(horizontal: 12.w)
              : const EdgeInsets.symmetric(horizontal: 0),
          child: SizedBox(
            height: 30.h,
            child: ElevatedButton(
              onPressed: () => model.setValCourses(index),
              style: ButtonStyle(
                  elevation: const MaterialStatePropertyAll(0),
                  backgroundColor: model.valCourses == index
                      ? const MaterialStatePropertyAll(colorrs.darkGreenColor)
                      : const MaterialStatePropertyAll(colorrs.buttonGreyColor),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)))),
              child: Text(
                model.listCourses[index],
                style: model.valCourses == index
                    ? textStyle.activeWhiteMulishStyle
                    : textStyle.inActiveWhiteMulishStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class listCourses extends StatelessWidget {
  const listCourses({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<popularCoursesModel>();
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 14,
      itemBuilder: (BuildContext context, int index) => Padding(
          padding: EdgeInsets.only(bottom: 20.h),
          child: listCoursesItem(
            index: index,
          )),
    );
  }
}

class listCoursesItem extends StatelessWidget {
  int index;
  listCoursesItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Container(
        width: 360.w,
        height: 130.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 3, // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 130.w,
              height: 130.h,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 3, // changes position of shadow
                    ),
                  ],
                  image: const DecorationImage(
                    image: AssetImage("assets/image/imageCourses.png"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  )),
            ),
            Container(
              width: 230.w,
              height: 130.h,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  )),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Graphic Design",
                          style: textStyle.orangeMulishStyle,
                        ),
                        SvgPicture.asset(
                          "assets/image/bookMark.svg",
                          width: 15.w,
                          height: 18.h,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Graphic Design Advanced",
                      style: textStyle.subMulishStyle,
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "\$24",
                          style: textStyle.activeMulishStyle,
                        ),
                        Text(
                          "\$42",
                          style: textStyle.saleMulishStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/image/Star.svg",
                          width: 12.w,
                          height: 12.h,
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Text(
                          "4.2",
                          style: textStyle.subMulishStyle,
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        const VerticalDivider(
                          color: Colors.black,
                          thickness: 2,
                          width: 1,
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Text(
                          "7830 std",
                          style: textStyle.subMulishStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
