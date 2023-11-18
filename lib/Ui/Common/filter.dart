import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Style/colors.dart';
import 'package:teelead/Style/text_style.dart';
import 'package:teelead/Domain/models/commonModels/filter_model.dart';

class Filter extends StatelessWidget {
  const Filter({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => filterModel(),
      child: const subFilter(),
    );
  }
}

class subFilter extends StatelessWidget {
  const subFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 34.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25.h,
              ),
              const topGroup(),
              SizedBox(
                height: 38.h,
              ),
              const subCategories(),
              SizedBox(
                height: 30.h,
              ),
              const Levels(),
              SizedBox(
                height: 30.h,
              ),
              const Price(),
              SizedBox(
                height: 30.h,
              ),
              const Features(),
              SizedBox(
                height: 30.h,
              ),
              const Rating(),
              SizedBox(
                height: 30.h,
              ),
              const videoDuration(),
              SizedBox(
                height: 18.h,
              ),
              const applyButton(),
            ],
          ),
        ),
      ),
    ));
  }
}

class topGroup extends StatelessWidget {
  const topGroup({super.key});

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
          "Filter",
          style: textStyle.titleStyle,
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {},
          child: Text(
            "Clear",
            style: textStyle.subTitleStyle,
          ),
        )
      ],
    );
  }
}

class subCategories extends StatelessWidget {
  const subCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "SubCategories:",
          style: textStyle.subTitleStyle,
        ),
        SizedBox(
          height: 15.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: Material(
                      child: Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          activeColor: colorrs.darkGreenColor,
                          checkColor: Colors.white,
                          value: true,
                          onChanged: (val) {}),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "3D Design",
                    style: textStyle.subMulishStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: Material(
                      child: Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          activeColor: colorrs.darkGreenColor,
                          checkColor: Colors.white,
                          value: true,
                          onChanged: (val) {}),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "Web Development",
                    style: textStyle.subMulishStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: Material(
                      child: Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          activeColor: colorrs.darkGreenColor,
                          checkColor: Colors.white,
                          value: true,
                          onChanged: (val) {}),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "3D Animation",
                    style: textStyle.subMulishStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: Material(
                      child: Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          activeColor: colorrs.darkGreenColor,
                          checkColor: Colors.white,
                          value: true,
                          onChanged: (val) {}),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "Graphic Design",
                    style: textStyle.subMulishStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: Material(
                      child: Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          activeColor: colorrs.darkGreenColor,
                          checkColor: Colors.white,
                          value: true,
                          onChanged: (val) {}),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "SEO & Marketing",
                    style: textStyle.subMulishStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: Material(
                      child: Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          activeColor: colorrs.darkGreenColor,
                          checkColor: Colors.white,
                          value: true,
                          onChanged: (val) {}),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "Art & Humanities",
                    style: textStyle.subMulishStyle,
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class Levels extends StatelessWidget {
  const Levels({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Levels:",
          style: textStyle.subTitleStyle,
        ),
        SizedBox(
          height: 15.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: Material(
                      child: Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          activeColor: colorrs.darkGreenColor,
                          checkColor: Colors.white,
                          value: true,
                          onChanged: (val) {}),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "API Levels",
                    style: textStyle.subMulishStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: Material(
                      child: Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          activeColor: colorrs.darkGreenColor,
                          checkColor: Colors.white,
                          value: true,
                          onChanged: (val) {}),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "Beginners",
                    style: textStyle.subMulishStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: Material(
                      child: Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          activeColor: colorrs.darkGreenColor,
                          checkColor: Colors.white,
                          value: true,
                          onChanged: (val) {}),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "Intermediate",
                    style: textStyle.subMulishStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: Material(
                      child: Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          activeColor: colorrs.darkGreenColor,
                          checkColor: Colors.white,
                          value: true,
                          onChanged: (val) {}),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "Expert",
                    style: textStyle.subMulishStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class Price extends StatelessWidget {
  const Price({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Price:",
          style: textStyle.subTitleStyle,
        ),
        SizedBox(
          height: 15.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: Material(
                      child: Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          activeColor: colorrs.darkGreenColor,
                          checkColor: Colors.white,
                          value: true,
                          onChanged: (val) {}),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "Paid",
                    style: textStyle.subMulishStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: Material(
                      child: Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          activeColor: colorrs.darkGreenColor,
                          checkColor: Colors.white,
                          value: true,
                          onChanged: (val) {}),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "Free",
                    style: textStyle.subMulishStyle,
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class Features extends StatelessWidget {
  const Features({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Features:",
          style: textStyle.subTitleStyle,
        ),
        SizedBox(
          height: 15.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: Material(
                      child: Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          activeColor: colorrs.darkGreenColor,
                          checkColor: Colors.white,
                          value: true,
                          onChanged: (val) {}),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "All Captian",
                    style: textStyle.subMulishStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: Material(
                      child: Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          activeColor: colorrs.darkGreenColor,
                          checkColor: Colors.white,
                          value: true,
                          onChanged: (val) {}),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "Quizzes",
                    style: textStyle.subMulishStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: Material(
                      child: Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          activeColor: colorrs.darkGreenColor,
                          checkColor: Colors.white,
                          value: true,
                          onChanged: (val) {}),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "Coding Exercise",
                    style: textStyle.subMulishStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: Material(
                      child: Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          activeColor: colorrs.darkGreenColor,
                          checkColor: Colors.white,
                          value: true,
                          onChanged: (val) {}),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "Practice Tests",
                    style: textStyle.subMulishStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Rating:",
          style: textStyle.subTitleStyle,
        ),
        SizedBox(
          height: 15.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: Material(
                      child: Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          activeColor: colorrs.darkGreenColor,
                          checkColor: Colors.white,
                          value: true,
                          onChanged: (val) {}),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "4.5 & Up Above",
                    style: textStyle.subMulishStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: Material(
                      child: Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          activeColor: colorrs.darkGreenColor,
                          checkColor: Colors.white,
                          value: true,
                          onChanged: (val) {}),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "4.0 & Up Above",
                    style: textStyle.subMulishStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: Material(
                      child: Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          activeColor: colorrs.darkGreenColor,
                          checkColor: Colors.white,
                          value: true,
                          onChanged: (val) {}),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "3.5 & Up Above",
                    style: textStyle.subMulishStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: Material(
                      child: Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          activeColor: colorrs.darkGreenColor,
                          checkColor: Colors.white,
                          value: true,
                          onChanged: (val) {}),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "3.0 & Up Above",
                    style: textStyle.subMulishStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class videoDuration extends StatelessWidget {
  const videoDuration({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Video Durations:",
          style: textStyle.subTitleStyle,
        ),
        SizedBox(
          height: 15.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: Material(
                      child: Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          activeColor: colorrs.darkGreenColor,
                          checkColor: Colors.white,
                          value: true,
                          onChanged: (val) {}),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "0-2 Hours",
                    style: textStyle.subMulishStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: Material(
                      child: Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          activeColor: colorrs.darkGreenColor,
                          checkColor: Colors.white,
                          value: true,
                          onChanged: (val) {}),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "3-6 Hours",
                    style: textStyle.subMulishStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: Material(
                      child: Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          activeColor: colorrs.darkGreenColor,
                          checkColor: Colors.white,
                          value: true,
                          onChanged: (val) {}),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "7-16 Hours",
                    style: textStyle.subMulishStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: Material(
                      child: Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          activeColor: colorrs.darkGreenColor,
                          checkColor: Colors.white,
                          value: true,
                          onChanged: (val) {}),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "17+ Hours",
                    style: textStyle.subMulishStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class applyButton extends StatelessWidget {
  const applyButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<filterModel>();
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 26.h),
      child: SizedBox(
          width: 350.w,
          height: 60.h,
          child: ElevatedButton(
              onPressed: () => model.apply(context),
              style: ButtonStyle(
                  backgroundColor:
                      const MaterialStatePropertyAll(colorrs.mainColor),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Apply",
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
                  )
                ],
              ))),
    );
  }
}
