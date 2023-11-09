import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teelead/Style/colors.dart';
import 'package:teelead/Style/text_style.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: colorrs.backgroundColor,
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 34.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 85.h,),
              Center(
                child: SizedBox(
                    width: 185.w,
                    height: 70.h,
                    child: Image.asset("assets/image/logo.png")),
              ),
              SizedBox(height: 60.h,),
              Text("Getting Started.!",style: textStyle.titleStyle,),
              SizedBox(height: 10.h,),
              Text("Create an Account to Continue your allCourses",style: textStyle.subMulishStyle,),
              SizedBox(height: 50.h,),
              Center(
                child: SizedBox(
                  width: 360.w,
                  height: 60.h,
                  child: CupertinoTextField(
                    keyboardType: TextInputType.name,
                    onEditingComplete: () => FocusScope.of(context).nextFocus(),
                    onChanged: (value) {

                      },
                    padding: EdgeInsets.symmetric(vertical: 22.h),
                    prefix:  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 22.h),
                      child: ImageIcon(const AssetImage("assets/image/message.png"),size: 19.w,),
                    ),
                    placeholder: "Email",
                    placeholderStyle: textStyle.subMulishStyle,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
              Center(
                child: SizedBox(
                  width: 360.w,
                  height: 60.h,
                  child: CupertinoTextField(
                    keyboardType: TextInputType.name,
                    onEditingComplete: () => FocusScope.of(context).nextFocus(),
                    onChanged: (value) {

                    },
                    padding: EdgeInsets.symmetric(vertical: 22.h),
                    prefix:  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 22.h),
                      child: ImageIcon(const AssetImage("assets/image/lock.png"),size: 19.w,),
                    ),
                    placeholder: "Password",
                    placeholderStyle: textStyle.subMulishStyle,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
              ),
              // SizedBox(height: 20.h,),
              Row(
                children: [
                  Image.asset("assets/image/agree.png"),
                  Text("Agree to Terms & Conditions",style: textStyle.subMulishStyle,)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
