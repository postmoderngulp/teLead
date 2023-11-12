import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Style/colors.dart';
import 'package:teelead/Style/text_style.dart';

import '../../Domain/models/authModels/set_finger_print_model.dart';

class setFingerPrint extends StatelessWidget {
  const setFingerPrint({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SetFingerPrintModel(),
      child: const subSetFingerprint(),
    );
  }
}

class subSetFingerprint extends StatelessWidget {
  const subSetFingerprint({super.key});

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
              height: 30.h,
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
                  "Set Your Fingerprint",
                  style: textStyle.titleStyle,
                ),
              ],
            ),
            SizedBox(
              height: 114.h,
            ),
            Center(
                child: Text(
              "Add a Fingerprint to Make your Account",
              style: textStyle.subMulishStyle,
            )),
            Center(
                child: Text(
              "more Secure",
              style: textStyle.subMulishStyle,
            )),
            SizedBox(
              height: 56.h,
            ),
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/image/border.svg",
                    width: 232.w,
                    height: 236.h,
                  ),
                  SvgPicture.asset(
                    "assets/image/fingerPrint.svg",
                    width: 135.w,
                    height: 150.h,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 90.h,
            ),
            Center(
                child: Text(
              "Please Put Your Finger on the Fingerprint",
              style: textStyle.subMulishStyle,
            )),
            Center(
                child: Text(
              "Scanner to get Started.",
              style: textStyle.subMulishStyle,
            )),
            SizedBox(
              height: 106.h,
            ),
            Row(
              children: [
                const SkipButton(),
                SizedBox(
                  width: 20.w,
                ),
                const continueButton(),
              ],
            )
          ],
        ),
      ),
    ));
  }
}

class continueButton extends StatelessWidget {
  const continueButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.read<SetFingerPrintModel>();
    return SizedBox(
        width: 200.w,
        height: 60.h,
        child: ElevatedButton(
            onPressed: () => model.goToForgotPassword(context),
            style: ButtonStyle(
                backgroundColor:
                    const MaterialStatePropertyAll(colorrs.mainColor),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Continue",
                  style: textStyle.buttonStyle,
                ),
                Container(
                  width: 48.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
                    child: SvgPicture.asset(
                      "assets/image/arrow_button.svg",
                      width: 21.w,
                      height: 17.h,
                    ),
                  ),
                )
              ],
            )));
  }
}

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.read<SetFingerPrintModel>();
    return SizedBox(
        width: 140.w,
        height: 60.h,
        child: ElevatedButton(
            onPressed: () => model.goToForgotPassword(context),
            style: ButtonStyle(
                backgroundColor:
                    const MaterialStatePropertyAll(colorrs.buttonGreyColor),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)))),
            child: Text(
              "Skip",
              style: textStyle.subMulishStyle,
            )));
  }
}
