import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Style/colors.dart';
import 'package:teelead/Style/text_style.dart';

import '../../Domain/models/authModels/sign_in_model.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => signInModel(),
      child: const subSignIn(),
    );
  }
}

class subSignIn extends StatelessWidget {
  const subSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.read<signInModel>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: colorrs.backgroundColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 390.h),
              Text(
                "Let’s you in",
                style: textStyle.titleStyle,
              ),
              SizedBox(
                height: 30.h,
              ),
              const googleGroup(),
              SizedBox(
                height: 24.h,
              ),
              const appleGroup(),
              SizedBox(
                height: 59.h,
              ),
              Text(
                "( Or )",
                style: textStyle.subTitleStyle,
              ),
              SizedBox(
                height: 30.h,
              ),
              const signInButton(),
              SizedBox(
                height: 30.h,
              ),
              GestureDetector(
                onTap: () => model.goToRegistr(context),
                child: Text(
                  "Don’t have an Account? SIGN UP",
                  style: textStyle.subSubTitleStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class googleGroup extends StatelessWidget {
  const googleGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 98.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              width: 54.w,
              height: 54.h,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.white),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)))),
                child: SvgPicture.asset(
                  "assets/image/google.svg",
                  width: 48.w,
                  height: 48.h,
                ),
              )),
          SizedBox(
            width: 14.w,
          ),
          Text(
            "Continue with Google",
            style: textStyle.subTitleStyle,
          ),
        ],
      ),
    );
  }
}

class appleGroup extends StatelessWidget {
  const appleGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 98.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              width: 54.w,
              height: 54.h,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.white),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)))),
                child: SvgPicture.asset(
                  "assets/image/apple.svg",
                  width: 48.w,
                  height: 48.h,
                ),
              )),
          SizedBox(
            width: 14.w,
          ),
          Text(
            "Continue with Apple",
            style: textStyle.subTitleStyle,
          ),
        ],
      ),
    );
  }
}

class signInButton extends StatelessWidget {
  const signInButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.read<signInModel>();
    return SizedBox(
        width: 350.w,
        height: 60.h,
        child: ElevatedButton(
            onPressed: () => model.goToRegistr(context),
            style: ButtonStyle(
                backgroundColor:
                    const MaterialStatePropertyAll(colorrs.mainColor),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sign In with Your Account",
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
