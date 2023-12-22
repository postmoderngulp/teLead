import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Domain/models/commonModels/write_review_model.dart';
import 'package:teelead/Style/colors.dart';
import 'package:teelead/Style/text_style.dart';

class WriteReviewWidget extends StatelessWidget {
  const WriteReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => writeReviewModel(),
      child: const subWriteReviewWidget(),
    );
  }
}

class subWriteReviewWidget extends StatelessWidget {
  const subWriteReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: colorrs.backgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 34.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25.h,
            ),
            Row(
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
                  "Write a Reviews",
                  style: textStyle.titleStyle,
                ),
              ],
            ),
            SizedBox(
              height: 25.h,
            ),
            Container(
              width: 360.w,
              height: 134.h,
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
                    padding: EdgeInsets.only(left: 21.w, top: 20.h),
                    child: Container(
                      width: 100.w,
                      height: 100.h,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/image/imageReview.png"),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                    ),
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
                          height: 47.h,
                        ),
                        Text(
                          "Graphic Design",
                          style: textStyle.orangeMulishStyle,
                        ),
                        Text(
                          "Graphic Design",
                          style: textStyle.JostTitleStyle,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Add Photo (or) Video",
              style: textStyle.JostTitleStyle,
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
                width: 360.w,
                height: 134.h,
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/image/upload.svg",
                      width: 62.w,
                      height: 40.h,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Click here to Upload",
                      style: textStyle.subTitleStyle,
                    ),
                  ],
                )),
            SizedBox(
              height: 15.h,
            ),
            Text(
              "Write you Review",
              style: textStyle.JostTitleStyle,
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
                width: 360.w,
                height: 134.h,
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
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: TextField(
                        decoration: InputDecoration(
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none),
                            hintText:
                                "Would you like to write anything about this Product?",
                            hintStyle: textStyle.fieldMulishStyle),
                      ),
                    ),
                    const Spacer(),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 13.h, right: 20.w),
                          child: Text(
                            "*250 Characters Remaining",
                            style: textStyle.fieldMulishStyle,
                          ),
                        )),
                  ],
                )),
            SizedBox(
              height: 50.h,
            ),
            const submitReview()
          ],
        ),
      ),
    ));
  }
}

class submitReview extends StatelessWidget {
  const submitReview({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<writeReviewModel>();
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 26.h),
        child: SizedBox(
            width: 350.w,
            height: 60.h,
            child: ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll(colorrs.mainColor),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Submit Review",
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
