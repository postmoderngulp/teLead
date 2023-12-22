import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Domain/models/commonModels/ongoing_courses_model.dart';
import 'package:teelead/Style/text_style.dart';
import 'package:teelead/Style/colors.dart';

class OnGoingCourses extends StatelessWidget {
  const OnGoingCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OnGoingCoursesModel(),
      child: const subOnGoingCourses(),
    );
  }
}

class subOnGoingCourses extends StatelessWidget {
  const subOnGoingCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 34.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25.h,
                    ),
                    const titleMyCourses(),
                    SizedBox(
                      height: 16.h,
                    ),
                    const searchTextField(),
                    SizedBox(
                      height: 20.h,
                    ),
                    const listCurriculcum()
                  ],
                ),
              ),
            ),
            const Positioned(
                bottom: 0, left: 0, right: 0, child: certificateButtonGroup()),
          ],
        ),
      ),
    );
  }
}

class certificateButtonGroup extends StatelessWidget {
  const certificateButtonGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 100,
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        width: MediaQuery.of(context).size.width,
        height: 140.h,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 34.w),
          child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                enrollButton(),
              ]),
        ),
      ),
    );
  }
}

class enrollButton extends StatelessWidget {
  const enrollButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<OnGoingCoursesModel>();
    return Center(
      child: SizedBox(
          width: 350.w,
          height: 60.h,
          child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      const MaterialStatePropertyAll(colorrs.mainColor),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Continue Courses",
                    style: textStyle.buttonStyle,
                  ),
                  Container(
                    width: 48.w,
                    height: 48.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 14.w, vertical: 14.h),
                      child: SvgPicture.asset(
                        "assets/image/arrow_button.svg",
                        width: 21.w,
                        height: 17.h,
                      ),
                    ),
                  )
                ],
              ))),
    );
  }
}

class listCurriculcum extends StatelessWidget {
  const listCurriculcum({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<OnGoingCoursesModel>();
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 3, // changes position of shadow
          ),
        ],
      ),
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) =>
              listCurriculcumItem(index: index)),
    );
  }
}

class listCurriculcumItem extends StatelessWidget {
  int index;
  listCurriculcumItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 25.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Row(
            children: [
              Text(
                "Section 01 -",
                style: textStyle.subSubTitleStyle,
              ),
              Text(
                "introducation",
                style: textStyle.subTitleMainStyle,
              ),
              // ignore: prefer_const_constructors
              Spacer(),
              Text(
                "25 Mins",
                style: textStyle.subTitleMainStyle,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        const listSection(),
      ],
    );
  }
}

class listSection extends StatelessWidget {
  const listSection({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<OnGoingCoursesModel>();
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) =>
          listSectionItem(index: index),
      separatorBuilder: (BuildContext context, int index) => const Divider(
        height: 1,
        color: Colors.grey,
      ),
    );
  }
}

class listSectionItem extends StatelessWidget {
  int index;
  listSectionItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360.w,
      height: 92.h,
      child: ListTile(
        leading: Container(
          decoration: const BoxDecoration(
              color: colorrs.buttonGreyColor, shape: BoxShape.circle),
          width: 46.w,
          height: 46.h,
          child: Center(
            child: Text(
              "$index",
              style: textStyle.subMulishStyle,
            ),
          ),
        ),
        title: Text(
          "Why Using Graphic De..",
          style: textStyle.subTitleStyle,
        ),
        subtitle: Text(
          "Why Using Graphic De..",
          style: textStyle.subMulishStyle,
        ),
        trailing: SvgPicture.asset(
          "assets/image/lock_lessons.svg",
          width: 18.w,
          height: 18.h,
        ),
      ),
    );
  }
}

class titleMyCourses extends StatelessWidget {
  const titleMyCourses({super.key});

  @override
  Widget build(BuildContext context) {
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
          "My Courses",
          style: textStyle.titleStyle,
        ),
      ],
    );
  }
}

class searchTextField extends StatelessWidget {
  const searchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<OnGoingCoursesModel>();
    return Center(
      child: SizedBox(
        width: 360.w,
        height: 60.h,
        child: CupertinoTextField(
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) {},
          padding: EdgeInsets.symmetric(vertical: 22.h),
          prefix: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 22.h),
            child: SvgPicture.asset(
              "assets/image/search.svg",
              width: 20.w,
              height: 20.h,
            ),
          ),
          suffix: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 22.h),
            child: SizedBox(
              width: 38.w,
              height: 38.h,
              child: SvgPicture.asset(
                "assets/image/filter.svg",
                width: 38.w,
                height: 38.h,
              ),
            ),
          ),
          placeholder: "Search for..",
          placeholderStyle: textStyle.subMulishStyle,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}
