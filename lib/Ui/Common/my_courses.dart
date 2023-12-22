import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Domain/models/commonModels/my_courses_model.dart';
import 'package:teelead/Style/text_style.dart';
import 'package:teelead/Style/colors.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MyCourses extends StatelessWidget {
  const MyCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => myCoursesModel(),
      child: const subMyCourses(),
    );
  }
}

class subMyCourses extends StatelessWidget {
  const subMyCourses({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<myCoursesModel>();
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
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
              const GroupButton(),
              SizedBox(
                height: 24.h,
              ),
              model.isCompletedPath ? const listCompleted() : const listGoing()
            ],
          ),
        ),
      ),
    ));
  }
}

class listCompleted extends StatelessWidget {
  const listCompleted({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<myCoursesModel>();
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 14,
      itemBuilder: (BuildContext context, int index) => GestureDetector(
        onTap: () => model.goToCompletedCurriculcum(context),
        child: Padding(
            padding: EdgeInsets.only(bottom: 20.h),
            child: listCompletedItem(
              index: index,
            )),
      ),
    );
  }
}

class listGoing extends StatelessWidget {
  const listGoing({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<myCoursesModel>();
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 14,
      itemBuilder: (BuildContext context, int index) => GestureDetector(
        onTap: () => model.goToOngoingCurriculcum(context),
        child: Padding(
            padding: EdgeInsets.only(bottom: 20.h),
            child: listGoingItem(
              index: index,
            )),
      ),
    );
  }
}

class listGoingItem extends StatelessWidget {
  int index;
  listGoingItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<myCoursesModel>();
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
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
                        Text(
                          "Graphic Design",
                          style: textStyle.orangeMulishStyle,
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
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            LinearPercentIndicator(
                              barRadius: const Radius.circular(25),
                              lineHeight: 6.h,
                              percent: model.percent,
                              progressColor: model.percent >= 0.8
                                  ? colorrs.darkGreenColor
                                  : model.percent >= 0.5
                                      ? Colors.orange
                                      : Colors.yellow,
                              width: 145.w,
                            ),
                            Text(
                              "93/125",
                              style: textStyle.subSubTitleStyle,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class listCompletedItem extends StatelessWidget {
  int index;
  listCompletedItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Container(
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
                            Text(
                              "Graphic Design",
                              style: textStyle.orangeMulishStyle,
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
                            SizedBox(
                              height: 15.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "View Certificate",
                                  style: textStyle.greenMulishStyle,
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
              Padding(
                padding: EdgeInsets.only(right: 24.w),
                child: Align(
                    alignment: Alignment.topRight,
                    child: SvgPicture.asset("assets/image/agree.svg")),
              ),
            ],
          ),
        ],
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
        const ComplitedButton(),
        SizedBox(
          width: 20.w,
        ),
        const OnGoingButton(),
      ],
    );
  }
}

class ComplitedButton extends StatelessWidget {
  const ComplitedButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<myCoursesModel>();
    return SizedBox(
      width: 170.w,
      height: 48.h,
      child: ElevatedButton(
        onPressed: () => model.setCompleted(true),
        style: ButtonStyle(
            elevation: const MaterialStatePropertyAll(0),
            backgroundColor: MaterialStatePropertyAll(model.isCompletedPath
                ? colorrs.darkGreenColor
                : colorrs.buttonGreyColor),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)))),
        child: Text("Complited",
            style: model.isCompletedPath
                ? textStyle.activeWhiteMulishStyle
                : textStyle.inActiveWhiteMulishStyle),
      ),
    );
  }
}

class OnGoingButton extends StatelessWidget {
  const OnGoingButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<myCoursesModel>();
    return SizedBox(
      width: 170.w,
      height: 48.h,
      child: ElevatedButton(
        onPressed: () => model.setCompleted(false),
        style: ButtonStyle(
            elevation: const MaterialStatePropertyAll(0),
            backgroundColor: MaterialStatePropertyAll(model.isCompletedPath
                ? colorrs.buttonGreyColor
                : colorrs.darkGreenColor),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)))),
        child: Text("Ongoing",
            style: model.isCompletedPath
                ? textStyle.inActiveWhiteMulishStyle
                : textStyle.activeWhiteMulishStyle),
      ),
    );
  }
}

class searchTextField extends StatelessWidget {
  const searchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<myCoursesModel>();
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
