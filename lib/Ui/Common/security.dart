import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Domain/models/commonModels/security_model.dart';
import 'package:teelead/Style/text_style.dart';
import 'package:teelead/Style/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Security extends StatelessWidget {
  const Security({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SecurityModel(),
      child: const subSecurity(),
    );
  }
}

class subSecurity extends StatelessWidget {
  const subSecurity({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 34.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25.h,
            ),
            const titleSecure(),
            SizedBox(
              height: 32.h,
            ),
            const groupSwitcher(),
            SizedBox(
              height: 44.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Google Authenticator",
                  style: textStyle.notMulishStyle,
                ),
                const Spacer(),
                SvgPicture.asset("assets/image/goChapter.svg")
              ],
            ),
            const Spacer(),
            const changePinButton(),
            SizedBox(
              height: 30.h,
            ),
            const changePasswordButton(),
            SizedBox(
              height: 27.h,
            ),
          ],
        ),
      ),
    ));
  }
}

bool val = false;

class groupSwitcher extends StatefulWidget {
  const groupSwitcher({super.key});

  @override
  State<groupSwitcher> createState() => _groupSwitcherState();
}

class _groupSwitcherState extends State<groupSwitcher> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Remember Me",
              style: textStyle.notMulishStyle,
            ),
            const Spacer(),
            SizedBox(
                width: 50.w,
                height: 30.h,
                child: CupertinoSwitch(
                    activeColor: colorrs.mainColor,
                    value: val,
                    onChanged: (value) {
                      setState(() {
                        val = value;
                      });
                    })),
          ],
        ),
        SizedBox(
          height: 40.h,
        ),
        Row(
          children: [
            Text(
              "Biometric ID",
              style: textStyle.notMulishStyle,
            ),
            const Spacer(),
            SizedBox(
                width: 50.w,
                height: 30.h,
                child: CupertinoSwitch(
                    activeColor: colorrs.mainColor,
                    value: val,
                    onChanged: (value) {
                      setState(() {
                        val = value;
                      });
                    })),
          ],
        ),
        SizedBox(
          height: 40.h,
        ),
        Row(
          children: [
            Text(
              "Face ID",
              style: textStyle.notMulishStyle,
            ),
            const Spacer(),
            SizedBox(
                width: 50.w,
                height: 30.h,
                child: CupertinoSwitch(
                    activeColor: colorrs.mainColor,
                    value: val,
                    onChanged: (value) {
                      setState(() {
                        val = value;
                      });
                    })),
          ],
        ),
      ],
    );
  }
}

class changePasswordButton extends StatelessWidget {
  const changePasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.read<SecurityModel>();
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
                    "Change Password",
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
                      )),
                ],
              ))),
    );
  }
}

class changePinButton extends StatelessWidget {
  const changePinButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.read<SecurityModel>();
    return Center(
      child: SizedBox(
          width: 350.w,
          height: 60.h,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                side: const MaterialStatePropertyAll(
                    BorderSide(width: 1, color: Colors.grey)),
                elevation: const MaterialStatePropertyAll(0),
                backgroundColor:
                    const MaterialStatePropertyAll(Colors.transparent),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)))),
            child: Text(
              "Change PIN",
              style: textStyle.JostTitleStyle,
            ),
          )),
    );
  }
}

class titleSecure extends StatelessWidget {
  const titleSecure({super.key});

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
          "Security",
          style: textStyle.titleStyle,
        ),
      ],
    );
  }
}
