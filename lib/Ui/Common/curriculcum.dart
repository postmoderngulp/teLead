import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Style/text_style.dart';
import 'package:teelead/Domain/models/commonModels/curriculcum_model.dart';
import 'package:teelead/Style/colors.dart';

class Curriculcum extends StatelessWidget {
  const Curriculcum({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CurriculcumModel(),
      child: const SubCurriculcum(),
    );
  }
}

class SubCurriculcum extends StatelessWidget {
  const SubCurriculcum({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: colorrs.backgroundColor,
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
              const titleCurriculcum(),
              SizedBox(
                height: 18.h,
              ),
              const listCurriculcum(),
              SizedBox(
                height: 20.h,
              ),
              const enrollButton(),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class enrollButton extends StatelessWidget {
  const enrollButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CurriculcumModel>();
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 26.h),
        child: SizedBox(
            width: 350.w,
            height: 60.h,
            child: ElevatedButton(
                onPressed: () => model.goToPayment(context),
                style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll(colorrs.mainColor),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Enroll Course - \$55",
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
      ),
    );
  }
}

class listCurriculcum extends StatelessWidget {
  const listCurriculcum({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<CurriculcumModel>();
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 3, // changes position of shadow
          ),
        ],
      ),
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) =>
              listCurriculcumItem(index: index)),
    );
  }
}

class listCurriculcumItem extends StatelessWidget {
  int index;
  listCurriculcumItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 25.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Row(
            children: [
              Text(
                "Section 01 -",
                style: textStyle.subSubTitleStyle,
              ),
              Text(
                "introducation",
                style: textStyle.subTitleMainStyle,
              ),
              // ignore: prefer_const_constructors
              Spacer(),
              Text(
                "25 Mins",
                style: textStyle.subTitleMainStyle,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        const listSection(),
      ],
    );
  }
}

class listSection extends StatelessWidget {
  const listSection({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<CurriculcumModel>();
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) =>
          listSectionItem(index: index),
      separatorBuilder: (BuildContext context, int index) => const Divider(
        height: 1,
        color: Colors.grey,
      ),
    );
  }
}

class listSectionItem extends StatelessWidget {
  int index;
  listSectionItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360.w,
      height: 92.h,
      child: ListTile(
        leading: Container(
          decoration: const BoxDecoration(
              color: colorrs.buttonGreyColor, shape: BoxShape.circle),
          width: 46.w,
          height: 46.h,
          child: Center(
            child: Text(
              "$index",
              style: textStyle.subMulishStyle,
            ),
          ),
        ),
        title: Text(
          "Why Using Graphic De..",
          style: textStyle.subTitleStyle,
        ),
        subtitle: Text(
          "Why Using Graphic De..",
          style: textStyle.subMulishStyle,
        ),
        trailing: SvgPicture.asset(
          "assets/image/videoTile.svg",
          width: 18.w,
          height: 18.h,
        ),
      ),
    );
  }
}

class titleCurriculcum extends StatelessWidget {
  const titleCurriculcum({super.key});

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
          "Curriculcum",
          style: textStyle.titleStyle,
        ),
      ],
    );
  }
}
