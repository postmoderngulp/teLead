import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Style/colors.dart';
import 'package:teelead/Style/text_style.dart';

import '../../Domain/models/forgot_model.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => forgotModel(),child: const subForgotPassword(), );
  }
}


class subForgotPassword extends StatelessWidget {
  const subForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 34.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.h,),
            Row(
              children: [
                GestureDetector(
                  child: const ImageIcon(
                      AssetImage(
                          "assets/image/backArrow.png"
                      )
                  ),
                  onTap: ()=>
                      Navigator.of(context).pop(),
                ),
                SizedBox(width: 10.w,),
                Text("Fill Your Profile",style: textStyle.titleStyle,),
              ],
            ),
            SizedBox(height: 350.h,),
            Center(child: Text("Select which contact details should we use to",style: textStyle.subMulishStyle,)),
            Center(child: Text("Reset Your Password",style: textStyle.subMulishStyle,)),
            const continueButton()
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
    final model = context.read<forgotModel>();
    return SizedBox(
        width: 350.w,
        height: 60.h,
        child: ElevatedButton(
            onPressed: () => model.goToVerifyPassword(context),
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
                  child: const ImageIcon(
                    AssetImage("assets/image/arrow_button.png"),
                    color: colorrs.mainColor,
                  ),
                )
              ],
            )));
  }
}