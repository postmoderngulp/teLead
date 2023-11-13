import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Style/colors.dart';
import 'package:teelead/Style/text_style.dart';

import '../../Domain/models/commonModels/all_category_model.dart';

class allCategory extends StatelessWidget {
  const allCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=> allCategoryModel(),child: const subAllCategory(),);
  }
}


class subAllCategory extends StatelessWidget {
  const subAllCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: colorrs.backgroundColor,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 34.w),
          child: Column(
            children: [
              SizedBox(height: 25.h,),
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
                    "All Category",
                    style: textStyle.titleStyle,
                  ),
                ],

              ),
               SizedBox(height: 30.h,),
              const searchTextField(),
              SizedBox(height: 70.h,),
              const AllCategory(),
            ],
          ),
        ),
      ),
    );
  }
}



class AllCategory extends StatelessWidget {
  const AllCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          SvgPicture.asset(
            "assets/image/3dDesign.svg",
            width: 53.w,
            height: 51.h,
          ),
          Text("3D Design",style: textStyle.subMulishStyle,),
          SizedBox(height: 50.h,),
          SvgPicture.asset(
            "assets/image/webDev.svg",
            width: 53.w,
            height: 51.h,
          ),
          Text("Web Development",style: textStyle.subMulishStyle,),
            SizedBox(height: 50.h,),
          SvgPicture.asset(
            "assets/image/finance.svg",
              width: 53.w,
              height: 51.h,
          ),
          Text("Finance & Accounting",style: textStyle.subMulishStyle,),
            SizedBox(height: 50.h,),
          SvgPicture.asset(
            "assets/image/office.svg",
            width: 53.w,
            height: 51.h,
          ),
          Text("Office Productivity",style: textStyle.subMulishStyle,),
        ],),
        const Spacer(),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/image/graphDesign.svg",
              width: 53.w,
              height: 51.h,
            ),
            Text("Graphic Design",style: textStyle.subMulishStyle,),
            SizedBox(height: 50.h,),
            SvgPicture.asset(
              "assets/image/marketing.svg",
              width: 53.w,
              height: 51.h,
            ),
            Text("Seo & Marketing",style: textStyle.subMulishStyle,),
            SizedBox(height: 50.h,),
            SvgPicture.asset(
              "assets/image/personalDev.svg",
              width: 53.w,
              height: 51.h,
            ),
            Text("Personal Development",style: textStyle.subMulishStyle,),
            SizedBox(height: 50.h,),
            SvgPicture.asset(
              "assets/image/hr.svg",
              width: 53.w,
              height: 51.h,
            ),
            Text("HR Management",style: textStyle.subMulishStyle,),
          ],
        ),
      ],
    );
  }
}


class searchTextField extends StatelessWidget {
  const searchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<allCategoryModel>();
    return Center(
      child: SizedBox(
        width: 360.w,
        height: 60.h,
        child: CupertinoTextField(
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) {},
          padding: EdgeInsets.only(top: 22.h,left: 20.w,bottom: 22.h),
          suffix: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 22.h),
            child: SizedBox(
              width: 38.w,
              height: 38.h,
              child: SvgPicture.asset(
                "assets/image/searchFilter.svg",
                width: 38.w,
                height: 38.h,
              ),
            ),
          ),

          placeholder: "Search for..",
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