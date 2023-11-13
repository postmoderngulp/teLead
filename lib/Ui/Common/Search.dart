import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Style/colors.dart';
import 'package:teelead/Style/text_style.dart';

import '../../Domain/models/commonModels/search_model.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=> searchModel(),child: const subSearch(),);
  }
}


class subSearch extends StatelessWidget {
  const subSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: colorrs.backgroundColor,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 34.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                const Spacer(),
                Text(
                  "Online Courses",
                  style: textStyle.titleStyle,
                ),
              ],
            ),
            SizedBox(height: 16.h,),
            const searchTextField(),
            SizedBox(height: 25.h,),
            const GroupButton(),
          ],
        ),
      ),
    ));
  }
}



class searchTextField extends StatelessWidget {
  const searchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<searchModel>();
    return Center(
      child: SizedBox(
        width: 360.w,
        height: 60.h,
        child: CupertinoTextField(
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) {},
          padding: EdgeInsets.symmetric(vertical: 22.h),
          prefix: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 22.h),
            child: SvgPicture.asset(
              "assets/image/search.svg",
              width: 20.w,
              height: 20.h,
            ),
          ),
          suffix: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 22.h),
            child: SizedBox(
              width: 38.w,
              height: 38.h,
              child: SvgPicture.asset(
                "assets/image/filter.svg",
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


class GroupButton extends StatelessWidget {
  const GroupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CoursesButton(),
        MentorsButton(),
      ],
    );
  }
}


class CoursesButton extends StatelessWidget {
  const CoursesButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<searchModel>();
    return SizedBox(
      width: 170.w,
      height: 48.h,
      child: ElevatedButton(
        onPressed: () => {},
        style: ButtonStyle(
            elevation: const MaterialStatePropertyAll(0),
            backgroundColor: const MaterialStatePropertyAll(colorrs.darkGreenColor),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)))),
        child: Text("Courses",
               style : textStyle.activeWhiteMulishStyle
        ),
      ),
    );
  }
}


class MentorsButton extends StatelessWidget {
  const MentorsButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<searchModel>();
    return SizedBox(
      width: 170.w,
      height: 48.h,
      child: ElevatedButton(
        onPressed: () => {},
        style: ButtonStyle(
            elevation: const MaterialStatePropertyAll(0),
            backgroundColor: const MaterialStatePropertyAll(colorrs.darkGreenColor),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)))),
        child: Text("Mentors",
            style : textStyle.inActiveWhiteMulishStyle
        ),
      ),
    );
  }
}