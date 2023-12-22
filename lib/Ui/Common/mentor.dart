import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Domain/models/commonModels/mentor_model.dart';
import 'package:teelead/Style/colors.dart';
import 'package:teelead/Style/text_style.dart';

class Mentor extends StatelessWidget {
  const Mentor({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MentorModel(),
      child: const subMentor(),
    );
  }
}

class subMentor extends StatelessWidget {
  const subMentor({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<MentorModel>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: colorrs.backgroundColor,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Material(
                elevation: 3,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 428.h,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 34.w),
                          child: GestureDetector(
                            child: SvgPicture.asset(
                              "assets/image/backArrow.svg",
                              width: 26.w,
                              height: 20.h,
                            ),
                            onTap: () => Navigator.of(context).pop(),
                          ),
                        ),
                        SizedBox(
                          height: 22.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 34.w),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 120.w,
                                  height: 120.h,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage("assets/image/BG.png"),
                                          fit: BoxFit.cover),
                                      shape: BoxShape.circle),
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                Text(
                                  "Christopher J. Levine",
                                  style: textStyle.titleStyle,
                                ),
                                const Text(
                                  "Graphic Designer At Google",
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "26",
                                          style: textStyle.subTitleStyle,
                                        ),
                                        const Text(
                                          "Courses",
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    Column(
                                      children: [
                                        Text(
                                          "15800",
                                          style: textStyle.subTitleStyle,
                                        ),
                                        const Text(
                                          "Students",
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    Column(
                                      children: [
                                        Text(
                                          "8750",
                                          style: textStyle.subTitleStyle,
                                        ),
                                        const Text(
                                          "Ratings",
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                const MentorButtons()
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 34.w),
                child: Container(
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
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15))),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 27.w, vertical: 22.h),
                          child: Text(
                            "Sed quanta s alias nunc tantum possitne tanta Nec vero sum nescius esse utilitatem in historia non modo voluptatem.",
                            style: textStyle.greyMulishStyle,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                              width: 180.w,
                              height: 52.h,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      elevation:
                                          const MaterialStatePropertyAll(0),
                                      backgroundColor: MaterialStatePropertyAll(
                                          model.isCourses
                                              ? colorrs.buttonGreyColor
                                              : colorrs.backgroundColor)),
                                  onPressed: () => model.setisCourses(true),
                                  child: Text(
                                    "Courses",
                                    style: textStyle.subSubTitleStyle,
                                  ))),
                          SizedBox(
                              width: 180.w,
                              height: 52.h,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      elevation:
                                          const MaterialStatePropertyAll(0),
                                      backgroundColor: MaterialStatePropertyAll(
                                          model.isCourses
                                              ? colorrs.backgroundColor
                                              : colorrs.buttonGreyColor)),
                                  onPressed: () => model.setisCourses(false),
                                  child: Text(
                                    "Ratings",
                                    style: textStyle.subSubTitleStyle,
                                  ))),
                        ],
                      ),
                      model.isCourses
                          ? const listCourses()
                          : const listRatings(),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
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
    final model = context.watch<MentorModel>();
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) => const listCoursesItem(),
      separatorBuilder: (BuildContext context, int index) => Divider(
        color: Colors.grey,
        height: 1.h,
      ),
    );
  }
}

class listRatings extends StatelessWidget {
  const listRatings({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<MentorModel>();
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) => const listRatingItem(),
      separatorBuilder: (BuildContext context, int index) => Divider(
        color: Colors.grey,
        height: 1.h,
      ),
    );
  }
}

class listRatingItem extends StatelessWidget {
  const listRatingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 5.w, top: 3.h),
                child: Container(
                  width: 54.w,
                  height: 54.h,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/image/BG.png"),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12.w, top: 1.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "William S. Cunningham",
                          style: textStyle.subSubTitleStyle,
                        ),
                        SizedBox(
                          width: 50.w,
                        ),
                        SizedBox(
                          width: 72.w,
                          height: 26.h,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                elevation: const MaterialStatePropertyAll(0),
                                backgroundColor: const MaterialStatePropertyAll(
                                    colorrs.buttonGreyColor),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        side: const BorderSide(
                                            width: 1,
                                            color: colorrs.mainColor)))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "4.2",
                                  style: textStyle.subSubTitleStyle,
                                ),
                                SizedBox(
                                  width: 4.w,
                                ),
                                SvgPicture.asset(
                                  "assets/image/Star.svg",
                                  width: 12.w,
                                  height: 12.h,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    SizedBox(
                      width: 255.w,
                      child: Text(
                        "The Course is Very Good dolor sit amet, con sect tur adipiscing elit. Naturales divitias dixit parab les esse..",
                        softWrap: true,
                        style: textStyle.subMulishStyle,
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          "assets/image/like.svg",
                          width: 17.w,
                          height: 16.h,
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text("578", style: textStyle.subMulishStyle),
                        SizedBox(
                          width: 22.w,
                        ),
                        Text("2 Weeks Ago", style: textStyle.subMulishStyle),
                      ],
                    )
                  ],
                ),
              )
            ]),
      ),
    );
  }
}

class listCoursesItem extends StatelessWidget {
  const listCoursesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 19.w, top: 20.h, bottom: 20.h),
            child: Container(
              width: 130.w,
              height: 130.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                      image: AssetImage("assets/image/imageReview.png"),
                      fit: BoxFit.cover)),
            ),
          ),
          Padding(
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
                    SizedBox(width: 78.w),
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
        ],
      ),
    );
  }
}

class MentorButtons extends StatelessWidget {
  const MentorButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const FollowButton(),
        SizedBox(
          width: 20.w,
        ),
        const MessageButton(),
      ],
    );
  }
}

class FollowButton extends StatelessWidget {
  const FollowButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.read<MentorModel>();
    return SizedBox(
        width: 170.w,
        height: 60.h,
        child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                elevation: const MaterialStatePropertyAll(0),
                backgroundColor:
                    const MaterialStatePropertyAll(colorrs.buttonGreyColor),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)))),
            child: Text(
              "Follow",
              style: textStyle.bigSubMulishStyle,
            )));
  }
}

class MessageButton extends StatelessWidget {
  const MessageButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.read<MentorModel>();
    return SizedBox(
        width: 170.w,
        height: 60.h,
        child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                elevation: const MaterialStatePropertyAll(0),
                backgroundColor:
                    const MaterialStatePropertyAll(colorrs.mainColor),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)))),
            child: Text(
              "Message",
              style: textStyle.buttonStyle,
            )));
  }
}
