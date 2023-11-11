import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Style/colors.dart';
import 'package:teelead/Style/text_style.dart';

import '../../Domain/models/authModels/register_model.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => registerModel(),
      child: const subRegister(),
    );
  }
}

class subRegister extends StatelessWidget {
  const subRegister({super.key});

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
                height: 85.h,
              ),
              Center(
                child: SizedBox(
                    width: 185.w,
                    height: 70.h,
                    child: Image.asset("assets/image/logo.png")),
              ),
              SizedBox(
                height: 60.h,
              ),
              Text(
                "Getting Started.!",
                style: textStyle.titleStyle,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Create an Account to Continue your allCourses",
                style: textStyle.subMulishStyle,
              ),
              SizedBox(
                height: 50.h,
              ),
              const emailTextField(),
              SizedBox(
                height: 20.h,
              ),
              const passwordTextField(),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Image.asset("assets/image/agree.png"),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    "Agree to Terms & Conditions",
                    style: textStyle.subMulishStyle,
                  )
                ],
              ),
              SizedBox(
                height: 35.h,
              ),
              const signUpButton(),
              SizedBox(
                height: 25.h,
              ),
              Center(
                child: Text(
                  "Or Continue With",
                  style: textStyle.subTitleStyle,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              const groupLogins(),
              SizedBox(
                height: 51.h,
              ),
              Center(
                child: Text(
                  "Already have an Account? SIGN IN",
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

class signUpButton extends StatelessWidget {
  const signUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<registerModel>();
    return SizedBox(
        width: 350.w,
        height: 60.h,
        child: ElevatedButton(
            onPressed: () => model.goToLogin(context),
            style: ButtonStyle(
                backgroundColor:
                    const MaterialStatePropertyAll(colorrs.mainColor),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sign Up",
                  style: textStyle.buttonStyle,
                ),
                Container(
                  width: 48.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)),
                  child: const ImageIcon(
                    AssetImage("assets/image/arrow_button.png"),
                    color: colorrs.mainColor,
                  ),
                )
              ],
            )));
  }
}

class emailTextField extends StatelessWidget {
  const emailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<registerModel>();
    return Center(
      child: SizedBox(
        width: 360.w,
        height: 60.h,
        child: CupertinoTextField(
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) {
            model.email = value;
            model.checkValid(model.email);
          },
          padding: EdgeInsets.symmetric(vertical: 22.h),
          prefix: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 22.h),
            child: ImageIcon(
              const AssetImage("assets/image/message.png"),
              size: 19.w,
            ),
          ),
          placeholder: "Email",
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

class passwordTextField extends StatelessWidget {
  const passwordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<registerModel>();
    return Center(
      child: SizedBox(
        width: 360.w,
        height: 60.h,
        child: CupertinoTextField(
          keyboardType: TextInputType.name,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) {},
          padding: EdgeInsets.symmetric(vertical: 22.h),
          suffix: Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 15.h),
            child: GestureDetector(
              onTap: () => model.changeCheck(),
              child: model.passwordCheck
                  ? const ImageIcon(
                      AssetImage("assets/image/iconCheck.png"),
                      color: colorrs.subBlackColor,
                    )
                  : const ImageIcon(
                      AssetImage("assets/image/iconNotCheck.png"),
                      color: colorrs.subBlackColor,
                    ),
            ),
          ),
          obscureText: !model.passwordCheck,
          prefix: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 22.h),
            child: ImageIcon(
              const AssetImage("assets/image/lock.png"),
              size: 19.w,
            ),
          ),
          placeholder: "Password",
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

class groupLogins extends StatelessWidget {
  const groupLogins({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.read<registerModel>();
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
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
                child: Image.asset("assets/image/google.png"),
              )),
          SizedBox(
            width: 50.w,
          ),
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
                child: Image.asset("assets/image/apple.png"),
              )),
        ],
      ),
    );
  }
}
