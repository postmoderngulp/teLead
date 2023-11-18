import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Domain/models/commonModels/single_course_details_model.dart';
import 'package:teelead/Style/colors.dart';
import 'package:teelead/Style/text_style.dart';

class singleCourseDetails extends StatelessWidget {
  const singleCourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SingleCourseDetailsModel(),
      child: const subSingleCourseDeatils(),
    );
  }
}

class subSingleCourseDeatils extends StatelessWidget {
  const subSingleCourseDeatils({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<SingleCourseDetailsModel>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: colorrs.backgroundColor,
        body: model.isAbout
            ? Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 428.w,
                        height: 400.h,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/image/imageBG.png"),
                              fit: BoxFit.cover),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 35.w, vertical: 30.h),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: GestureDetector(
                              child: SvgPicture.asset(
                                "assets/image/backArrow.svg",
                                width: 26.w,
                                height: 20.h,
                                fit: BoxFit.none,
                              ),
                              onTap: () => Navigator.of(context).pop(),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 351.h),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: 360.w,
                            height: 560.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.4),
                                  spreadRadius: 1,
                                  blurRadius: 3, // changes position of shadow
                                ),
                              ],
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 55.h,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20.w),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Graphic Design",
                                          style: textStyle.orangeMulishStyle,
                                        ),
                                        const Spacer(),
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
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20.w),
                                    child: Text(
                                      "Design Principles: Organizing ..",
                                      style: textStyle.subTitleStyle,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20.w),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SvgPicture.asset(
                                          "assets/image/shooting.svg",
                                          width: 19.w,
                                          height: 19.h,
                                        ),
                                        SizedBox(
                                          width: 8.w,
                                        ),
                                        Text(
                                          "21 Close",
                                          style: textStyle.subSubTitleStyle,
                                        ),
                                        SizedBox(
                                          width: 15.w,
                                        ),
                                        SvgPicture.asset(
                                          "assets/image/clock.svg",
                                          width: 19.w,
                                          height: 19.h,
                                        ),
                                        SizedBox(
                                          width: 8.w,
                                        ),
                                        Text(
                                          "42 Hours",
                                          style: textStyle.subSubTitleStyle,
                                        ),
                                        const Spacer(),
                                        Text(
                                          "\$ 28",
                                          style: textStyle.subTitleMainStyle,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 11.h,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                          width: 180.w,
                                          height: 52.h,
                                          child: ElevatedButton(
                                              style: ButtonStyle(
                                                  elevation:
                                                      const MaterialStatePropertyAll(
                                                          0),
                                                  backgroundColor:
                                                      MaterialStatePropertyAll(model
                                                              .isAbout
                                                          ? colorrs
                                                              .buttonGreyColor
                                                          : colorrs
                                                              .backgroundColor)),
                                              onPressed: () =>
                                                  model.setIsAbout(true),
                                              child: Text(
                                                "About",
                                                style:
                                                    textStyle.subSubTitleStyle,
                                              ))),
                                      SizedBox(
                                          width: 180.w,
                                          height: 52.h,
                                          child: ElevatedButton(
                                              style: ButtonStyle(
                                                  elevation:
                                                      const MaterialStatePropertyAll(
                                                          0),
                                                  backgroundColor:
                                                      MaterialStatePropertyAll(model
                                                              .isAbout
                                                          ? colorrs
                                                              .backgroundColor
                                                          : colorrs
                                                              .buttonGreyColor)),
                                              onPressed: () =>
                                                  model.setIsAbout(false),
                                              child: Text(
                                                "Curriculcum",
                                                style:
                                                    textStyle.subSubTitleStyle,
                                              ))),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20.w),
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
                                  const enrollButton(),
                                ]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 321.h, right: 50.w),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                              width: 70.w,
                              height: 70.h,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: const ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                          colorrs.darkGreenColor),
                                      shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(100))))),
                                  child: Icon(
                                    Icons.slow_motion_video_rounded,
                                    color: Colors.white,
                                    size: 35.w,
                                  ))),
                        ),
                      )
                    ],
                  ),
                ],
              )
            : SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 428.w,
                          height: 400.h,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/image/imageBG.png"),
                                fit: BoxFit.cover),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 35.w, vertical: 30.h),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: GestureDetector(
                                child: SvgPicture.asset(
                                  "assets/image/backArrow.svg",
                                  width: 26.w,
                                  height: 20.h,
                                  fit: BoxFit.none,
                                ),
                                onTap: () => Navigator.of(context).pop(),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 351.h),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: 360.w,
                              height: 394.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.4),
                                    spreadRadius: 1,
                                    blurRadius: 3, // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 55.h,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.w),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Graphic Design",
                                            style: textStyle.orangeMulishStyle,
                                          ),
                                          const Spacer(),
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
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.w),
                                      child: Text(
                                        "Design Principles: Organizing ..",
                                        style: textStyle.subTitleStyle,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.w),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SvgPicture.asset(
                                            "assets/image/shooting.svg",
                                            width: 19.w,
                                            height: 19.h,
                                          ),
                                          SizedBox(
                                            width: 8.w,
                                          ),
                                          Text(
                                            "21 Close",
                                            style: textStyle.subSubTitleStyle,
                                          ),
                                          SizedBox(
                                            width: 15.w,
                                          ),
                                          SvgPicture.asset(
                                            "assets/image/clock.svg",
                                            width: 19.w,
                                            height: 19.h,
                                          ),
                                          SizedBox(
                                            width: 8.w,
                                          ),
                                          Text(
                                            "42 Hours",
                                            style: textStyle.subSubTitleStyle,
                                          ),
                                          const Spacer(),
                                          Text(
                                            "\$ 28",
                                            style: textStyle.subTitleMainStyle,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 11.h,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                            width: 180.w,
                                            height: 52.h,
                                            child: ElevatedButton(
                                                style: ButtonStyle(
                                                    elevation:
                                                        const MaterialStatePropertyAll(
                                                            0),
                                                    backgroundColor:
                                                        MaterialStatePropertyAll(model
                                                                .isAbout
                                                            ? colorrs
                                                                .buttonGreyColor
                                                            : colorrs
                                                                .backgroundColor)),
                                                onPressed: () =>
                                                    model.setIsAbout(true),
                                                child: Text(
                                                  "About",
                                                  style: textStyle
                                                      .subSubTitleStyle,
                                                ))),
                                        SizedBox(
                                            width: 180.w,
                                            height: 52.h,
                                            child: ElevatedButton(
                                                style: ButtonStyle(
                                                    elevation:
                                                        const MaterialStatePropertyAll(
                                                            0),
                                                    backgroundColor:
                                                        MaterialStatePropertyAll(model
                                                                .isAbout
                                                            ? colorrs
                                                                .backgroundColor
                                                            : colorrs
                                                                .buttonGreyColor)),
                                                onPressed: () =>
                                                    model.setIsAbout(false),
                                                child: Text(
                                                  "Curriculcum",
                                                  style: textStyle
                                                      .subSubTitleStyle,
                                                ))),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.w),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 17.h,
                                          ),
                                          Text(
                                            "Graphic Design now a popular profession graphic design by off your carrer about tantas regiones barbarorum pedibus obiit",
                                            style: textStyle.subMulishStyle,
                                          ),
                                          SizedBox(
                                            height: 15.h,
                                          ),
                                          Text(
                                            "Graphic Design n a popular profession l Cur tantas regiones barbarorum pedibus obiit, maria transmi Et ne nimium beatus est; Addidisti ad extremum etiam Read More",
                                            style: textStyle.subMulishStyle,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 321.h, right: 50.w),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                                width: 70.w,
                                height: 70.h,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: const ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                colorrs.darkGreenColor),
                                        shape: MaterialStatePropertyAll(
                                            RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(100))))),
                                    child: Icon(
                                      Icons.slow_motion_video_rounded,
                                      color: Colors.white,
                                      size: 35.w,
                                    ))),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 34.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Instructor",
                            style: textStyle.subTitleStyle,
                          ),
                          ListTile(
                            leading: Container(
                              width: 54.w,
                              height: 54.h,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/image/BG.png"),
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100))),
                            ),
                            title: Text(
                              "William S. Cunningham",
                              style: textStyle.subTitleStyle,
                            ),
                            subtitle: Text(
                              "Graphic Design",
                              style: textStyle.subMulishStyle,
                            ),
                            trailing: SvgPicture.asset(
                              "assets/image/messg.svg",
                              width: 20.w,
                              height: 20.h,
                            ),
                          ),
                          SizedBox(
                            height: 42.h,
                          ),
                          Text(
                            "What You’ll Get",
                            style: textStyle.subTitleStyle,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/image/lessons.svg",
                                width: 16.w,
                                height: 20.h,
                              ),
                              SizedBox(
                                width: 16.w,
                              ),
                              Text(
                                "25 Lessons",
                                style: textStyle.subMulishStyle,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 36.h,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/image/mobile.svg",
                                width: 15.w,
                                height: 23.h,
                              ),
                              SizedBox(
                                width: 16.w,
                              ),
                              Text(
                                "Access Mobile, Desktop & TV",
                                style: textStyle.subMulishStyle,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 36.h,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/image/statistic.svg",
                                width: 16.w,
                                height: 20.h,
                              ),
                              SizedBox(
                                width: 16.w,
                              ),
                              Text(
                                "Beginner Level",
                                style: textStyle.subMulishStyle,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 36.h,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/image/audio.svg",
                                width: 16.w,
                                height: 20.h,
                              ),
                              SizedBox(
                                width: 16.w,
                              ),
                              Text(
                                "Audio Book",
                                style: textStyle.subMulishStyle,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 36.h,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/image/lifeTime.svg",
                                width: 16.w,
                                height: 20.h,
                              ),
                              SizedBox(
                                width: 16.w,
                              ),
                              Text(
                                "Lifetime Access",
                                style: textStyle.subMulishStyle,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 36.h,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/image/quizzes.svg",
                                width: 16.w,
                                height: 20.h,
                              ),
                              SizedBox(
                                width: 16.w,
                              ),
                              Text(
                                "100 Quizzes",
                                style: textStyle.subMulishStyle,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 36.h,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/image/certificate.svg",
                                width: 16.w,
                                height: 20.h,
                              ),
                              SizedBox(
                                width: 16.w,
                              ),
                              Text(
                                "Certificate of Completion",
                                style: textStyle.subMulishStyle,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 46.h,
                          ),
                          const Reviews(),
                          SizedBox(
                            height: 24.h,
                          ),
                          const listReview(),
                          SizedBox(
                            height: 25.h,
                          ),
                          const enrollButton(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}

class listSection extends StatelessWidget {
  const listSection({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<SingleCourseDetailsModel>();
    return SizedBox(
      height: 195.h,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) => Padding(
            padding: EdgeInsets.only(bottom: 20.h),
            child: listSectionItem(
              index: index,
            )),
      ),
    );
  }
}

class Reviews extends StatelessWidget {
  const Reviews({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<SingleCourseDetailsModel>();
    return Row(
      children: [
        Text(
          "Reviews",
          style: textStyle.subTitleStyle,
        ),
        const Spacer(),
        GestureDetector(
          onTap: () => model.goToReviews(context),
          child: Row(
            children: [
              Text(
                "SEE ALL",
                style: textStyle.subTitleMainStyle,
              ),
              SizedBox(
                width: 5.w,
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: colorrs.mainColor,
                size: 14.w,
              )
            ],
          ),
        ),
      ],
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
          "assets/image/videoTile.svg",
          width: 18.w,
          height: 18.h,
        ),
      ),
    );
  }
}

class enrollButton extends StatelessWidget {
  const enrollButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<SingleCourseDetailsModel>();
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 26.h),
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
                      "Enroll Course - \$55",
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
      ),
    );
  }
}

class listReview extends StatelessWidget {
  const listReview({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<SingleCourseDetailsModel>();
    return SizedBox(
      height: 300.h,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) => Padding(
            padding: EdgeInsets.only(bottom: 20.h),
            child: const listReviewItem()),
      ),
    );
  }
}

class listReviewItem extends StatelessWidget {
  const listReviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 26.h),
      child: Container(
        width: 365.w,
        height: 139.h,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 1.w, top: 3.h),
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
                    Text(
                      "The Course is Very Good dolor sit amet, ",
                      softWrap: true,
                      style: textStyle.subMulishStyle,
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
