import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Style/colors.dart';
import 'package:teelead/Style/text_style.dart';

import '../../Domain/models/authModels/verify_forgot_password_model.dart';

class verifyForgotPassword extends StatelessWidget {
  const verifyForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => verifyForgotPasswordModel(),
      child: const subVerifyForgotPassword(),
    );
  }
}

class subVerifyForgotPassword extends StatelessWidget {
  const subVerifyForgotPassword({super.key});

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
                  "Forgot Password",
                  style: textStyle.titleStyle,
                ),
              ],
            ),
            SizedBox(
              height: 124.h,
            ),
            Center(
                child: Text(
              "Code has been Send to ( +1 ) ***-***-*529",
              style: textStyle.subMulishStyle,
            )),
            SizedBox(
              height: 40.h,
            ),
            const InputFields(),
            SizedBox(
              height: 40.h,
            ),
            const resendCode(),
            SizedBox(
              height: 50.h,
            ),
            const verifyButton(),
            SizedBox(
              height: 52.h,
            ),
            inputFieldPassword()
          ],
        ),
      ),
    ));
  }
}

class InputFields extends StatelessWidget {
  const InputFields({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<verifyForgotPasswordModel>();
    return Row(
      children: [
        Container(
          width: 42.w,
          height: 50.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 3, // changes position of shadow
              ),
            ],
          ),
          child: Center(
            child: Text(
              model.securePassword.isNotEmpty ? model.securePassword[0] : "",
              style: textStyle.numberFieldStyle,
            ),
          ),
        ),
        SizedBox(
          width: 20.w,
        ),
        Container(
          width: 42.w,
          height: 50.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 3, // changes position of shadow
              ),
            ],
          ),
          child: Center(
            child: Text(
              model.securePassword.length >= 2 ? model.securePassword[1] : "",
              style: textStyle.numberFieldStyle,
            ),
          ),
        ),
        SizedBox(
          width: 20.w,
        ),
        Container(
          width: 42.w,
          height: 50.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 3, // changes position of shadow
              ),
            ],
          ),
          child: Center(
            child: Text(
              model.securePassword.length >= 3 ? model.securePassword[2] : "",
              style: textStyle.numberFieldStyle,
            ),
          ),
        ),
        SizedBox(
          width: 20.w,
        ),
        Container(
          width: 42.w,
          height: 50.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 3, // changes position of shadow
              ),
            ],
          ),
          child: Center(
            child: Text(
              model.securePassword.length >= 4 ? model.securePassword[3] : "",
              style: textStyle.numberFieldStyle,
            ),
          ),
        ),
        SizedBox(
          width: 20.w,
        ),
        Container(
          width: 42.w,
          height: 50.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 3, // changes position of shadow
              ),
            ],
          ),
          child: Center(
            child: Text(
              model.securePassword.length >= 5 ? model.securePassword[4] : "",
              style: textStyle.numberFieldStyle,
            ),
          ),
        ),
        SizedBox(
          width: 20.w,
        ),
        Container(
          width: 42.w,
          height: 50.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 3, // changes position of shadow
              ),
            ],
          ),
          child: Center(
            child: Text(
              model.securePassword.length >= 6 ? model.securePassword[5] : "",
              style: textStyle.numberFieldStyle,
            ),
          ),
        ),
      ],
    );
  }
}

class inputFieldPassword extends StatelessWidget {
  inputFieldPassword({super.key});

  var number = [1, 2, 3, 4, 5, 6, 7, 8, 9, '*', 0];
  var inputText = "";

  @override
  Widget build(BuildContext context) {
    final email = ModalRoute.of(context)!.settings.arguments as String;
    final model = context.watch<verifyForgotPasswordModel>();
    return Center(
      child: Column(
        children: [
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 12,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, childAspectRatio: 1.5),
            itemBuilder: (context, index) => Container(
              margin: const EdgeInsets.all(5),
              child: Center(
                child: MaterialButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  enableFeedback: false,
                  onPressed: () {
                    if (index != 11) {
                      model.setPassword(
                          number[index].toString(), email, context);
                    }
                  },
                  child: index == 11
                      ? SvgPicture.asset("assets/image/clear.svg")
                      : Text(
                          "${number[index]}",
                          style: textStyle.subMulishStyle,
                        ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class resendCode extends StatefulWidget {
  const resendCode({super.key});

  @override
  State<resendCode> createState() => _resendCodeState();
}

class _resendCodeState extends State<resendCode> {
  @override
  Widget build(BuildContext context) {
    final model = context.watch<verifyForgotPasswordModel>();
    return Center(child: Text("Resend Code in ${model.sec}s"));
  }
}

class verifyButton extends StatelessWidget {
  const verifyButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<verifyForgotPasswordModel>();
    return SizedBox(
        width: 350.w,
        height: 60.h,
        child: ElevatedButton(
            onPressed: () => model.goToCreateNewPassword(context),
            style: ButtonStyle(
                backgroundColor:
                    const MaterialStatePropertyAll(colorrs.mainColor),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Verify",
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
            )));
  }
}
