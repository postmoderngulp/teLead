import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Domain/models/commonModels/review_model.dart';
import 'package:teelead/Style/colors.dart';
import 'package:teelead/Style/text_style.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => reviewModel(),
      child: const subReview(),
    );
  }
}

class subReview extends StatelessWidget {
  const subReview({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: colorrs.backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 34.w),
                child: Row(
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
                      "Reviews",
                      style: textStyle.titleStyle,
                    ),
                  ],
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "4.8",
                      style: textStyle.titleStyle,
                    ),
                    SvgPicture.asset(
                      "assets/image/starRating.svg",
                      width: 102.w,
                      height: 14.h,
                    ),
                    Text(
                      "Based on 448 Reviews",
                      style: textStyle.subMulishStyle,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              const listCoursesButton(),
              SizedBox(
                height: 22.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 34.w),
                child: const listBanner(),
              ),
              const writeReview()
            ],
          ),
        ),
      ),
    );
  }
}

class listCoursesButton extends StatelessWidget {
  const listCoursesButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<reviewModel>();
    return SizedBox(
      height: 30.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: model.listRatings.length,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: index != 0 && index != model.listRatings.length
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
                model.listRatings[index],
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

class listBanner extends StatelessWidget {
  const listBanner({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<reviewModel>();
    return ListView.builder(
      physics: const ClampingScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        var listBannersItem2 = const listBannersItem();
        return Padding(
            padding: EdgeInsets.only(bottom: 20.h), child: listBannersItem2);
      },
    );
  }
}

class listBannersItem extends StatelessWidget {
  const listBannersItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      height: 154.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 3, // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 21.w, top: 23.h),
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
          SizedBox(
            width: 12.w,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.w,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 21.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "William S. Cunningham",
                      style: textStyle.subSubTitleStyle,
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
                                        width: 1, color: colorrs.mainColor)))),
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
                  width: 260.w,
                  child: Text(
                    "The Course is Very Good dolor sit amet, con sect tur adipiscing elit. Naturales divitias dixit parab les esse.. ",
                    softWrap: true,
                    style: textStyle.subMulishStyle,
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class writeReview extends StatelessWidget {
  const writeReview({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<reviewModel>();
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
                      "Write a Review",
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
