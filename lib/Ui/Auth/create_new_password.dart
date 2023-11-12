import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Style/colors.dart';
import 'package:teelead/Style/text_style.dart';

import '../../Domain/models/authModels/create_new_password_model.dart';

class createNewPassword extends StatelessWidget {
  const createNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => createNewPasswordModel(),
      child: const subCreateNewPassword(),
    );
  }
}

class subCreateNewPassword extends StatelessWidget {
  const subCreateNewPassword({super.key});

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
                  "Create New Password",
                  style: textStyle.titleStyle,
                ),
              ],
            ),
            SizedBox(
              height: 361.h,
            ),
            Text(
              "Create New Password",
              style: textStyle.titleStyle,
            ),
            SizedBox(
              height: 25.h,
            ),
            const passwordTextField(),
            SizedBox(
              height: 20.h,
            ),
            const confirmPasswordTextField(),
            SizedBox(
              height: 50.h,
            ),
            const continueButton(),
          ],
        ),
      ),
    ));
  }
}

class passwordTextField extends StatelessWidget {
  const passwordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<createNewPasswordModel>();
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
            child: SvgPicture.asset(
              "assets/image/lock.svg",
              width: 15.w,
              height: 20.h,
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

class confirmPasswordTextField extends StatelessWidget {
  const confirmPasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<createNewPasswordModel>();
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
              onTap: () => model.confirmChangeCheck(),
              child: model.confirmPasswordCheck
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
          obscureText: !model.confirmPasswordCheck,
          prefix: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 22.h),
            child: SvgPicture.asset(
              "assets/image/lock.svg",
              width: 15.w,
              height: 20.h,
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

class continueButton extends StatelessWidget {
  const continueButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<createNewPasswordModel>();
    return Center(
      child: SizedBox(
          width: 350.w,
          height: 60.h,
          child: ElevatedButton(
              onPressed: () => model.goToHome(context),
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
                      padding: EdgeInsets.symmetric(
                          horizontal: 14.w, vertical: 14.h),
                      child: SvgPicture.asset(
                        "assets/image/arrow_button.svg",
                        width: 21.w,
                        height: 17.h,
                      ),
                    ),
                  ),
                ],
              ))),
    );
  }
}
