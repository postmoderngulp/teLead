import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Style/colors.dart';
import 'package:teelead/Style/text_style.dart';

import '../../Domain/models/commonModels/search_model.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as int;
    return ChangeNotifierProvider(
      create: (context) => searchModel(args),
      child: const subSearch(),
    );
  }
}

class subSearch extends StatelessWidget {
  const subSearch({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<searchModel>();
    return SafeArea(
        child: Scaffold(
      backgroundColor: colorrs.backgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 34.w),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25.h,
              ),
              const topGroup(),
              SizedBox(
                height: 16.h,
              ),
              const searchTextField(),
              SizedBox(
                height: 25.h,
              ),
              const GroupButton(),
              SizedBox(
                height: 30.h,
              ),
              model.isCoursePath ? const listCourses() : const listMentors(),
            ],
          ),
        ),
      ),
    ));
  }
}

class listMentors extends StatelessWidget {
  const listMentors({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<searchModel>();
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) => GestureDetector(
        onTap: () => model.goToMentor(context),
        child: Padding(
            padding: EdgeInsets.only(bottom: 20.h),
            child: listMentorsItem(
              index: index,
            )),
      ),
      separatorBuilder: (BuildContext context, int index) => const Divider(
        color: colorrs.greyColor,
      ),
    );
  }
}

class listMentorsItem extends StatelessWidget {
  int index;
  listMentorsItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        "assets/image/noMentorAvatar.svg",
        width: 66.w,
        height: 66.h,
      ),
      title: Text(
        "Jensen",
        style: textStyle.subTitleStyle,
      ),
      subtitle: Text(
        "3D Design",
        style: textStyle.subMulishStyle,
      ),
    );
  }
}

class topGroup extends StatelessWidget {
  const topGroup({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<searchModel>();
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
          width: 5.w,
        ),
        model.isCoursePath
            ? Text(
                "Online Courses",
                style: textStyle.titleStyle,
              )
            : Text(
                "Mentors",
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
    final model = context.watch<searchModel>();
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
          suffix: GestureDetector(
            onTap: () => model.goToFilter(context),
            child: Padding(
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

class GroupButton extends StatelessWidget {
  const GroupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CoursesButton(),
        SizedBox(
          width: 20.w,
        ),
        const MentorsButton(),
      ],
    );
  }
}

class CoursesButton extends StatelessWidget {
  const CoursesButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<searchModel>();
    return SizedBox(
      width: 170.w,
      height: 48.h,
      child: ElevatedButton(
        onPressed: () => model.setCoursePath(true),
        style: ButtonStyle(
            elevation: const MaterialStatePropertyAll(0),
            backgroundColor: MaterialStatePropertyAll(model.isCoursePath
                ? colorrs.darkGreenColor
                : colorrs.buttonGreyColor),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)))),
        child: Text("Courses",
            style: model.isCoursePath
                ? textStyle.activeWhiteMulishStyle
                : textStyle.inActiveWhiteMulishStyle),
      ),
    );
  }
}

class MentorsButton extends StatelessWidget {
  const MentorsButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<searchModel>();
    return SizedBox(
      width: 170.w,
      height: 48.h,
      child: ElevatedButton(
        onPressed: () => model.setCoursePath(false),
        style: ButtonStyle(
            elevation: const MaterialStatePropertyAll(0),
            backgroundColor: MaterialStatePropertyAll(model.isCoursePath
                ? colorrs.buttonGreyColor
                : colorrs.darkGreenColor),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)))),
        child: Text("Mentors",
            style: model.isCoursePath
                ? textStyle.inActiveWhiteMulishStyle
                : textStyle.activeWhiteMulishStyle),
      ),
    );
  }
}

class listCourses extends StatelessWidget {
  const listCourses({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<searchModel>();
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) => Padding(
          padding: EdgeInsets.only(bottom: 20.h),
          child: GestureDetector(
            onTap: () => model.goToInfoCourse(context),
            child: listCoursesItem(
              index: index,
            ),
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
