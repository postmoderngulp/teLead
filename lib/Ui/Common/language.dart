import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Style/text_style.dart';
import 'package:teelead/Style/colors.dart';
import 'package:teelead/Domain/models/commonModels/language_model.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LanguageModel(),
      child: const subLanguage(),
    );
  }
}

class subLanguage extends StatelessWidget {
  const subLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 34.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25.h,
              ),
              const titleLanguage(),
              SizedBox(
                height: 30.h,
              ),
              Text(
                "SubCategories:",
                style: textStyle.JostTitleStyle,
              ),
              SizedBox(
                height: 15.h,
              ),
              const ListSubCategories(),
              Text(
                "All Language:",
                style: textStyle.JostTitleStyle,
              ),
              SizedBox(
                height: 15.h,
              ),
              const ListAllCategories()
            ],
          ),
        ),
      ),
    ));
  }
}

class ListSubCategories extends StatelessWidget {
  const ListSubCategories({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<LanguageModel>();
    return ListView.builder(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) => Padding(
              padding: EdgeInsets.only(bottom: 5.h, left: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "English (US)",
                    style: textStyle.chapterStyle,
                  ),
                  const Spacer(),
                  Material(
                    child: Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        activeColor: colorrs.darkGreenColor,
                        checkColor: Colors.white,
                        value: true,
                        onChanged: (val) {}),
                  ),
                ],
              ),
            ));
  }
}

class ListAllCategories extends StatelessWidget {
  const ListAllCategories({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<LanguageModel>();
    return ListView.builder(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) => Padding(
              padding: EdgeInsets.only(bottom: 5.h, left: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "English (US)",
                    style: textStyle.chapterStyle,
                  ),
                  const Spacer(),
                  Material(
                    child: Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        activeColor: colorrs.darkGreenColor,
                        checkColor: Colors.white,
                        value: true,
                        onChanged: (val) {}),
                  ),
                ],
              ),
            ));
  }
}

class titleLanguage extends StatelessWidget {
  const titleLanguage({super.key});

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
          "Language",
          style: textStyle.titleStyle,
        ),
      ],
    );
  }
}
