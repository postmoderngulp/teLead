import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Domain/models/commonModels/home_model.dart';
import 'package:teelead/Style/colors.dart';
import 'package:teelead/Style/text_style.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => homeModel(),
      child: const SubHome(),
    );
  }
}

class SubHome extends StatelessWidget {
  const SubHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: colorrs.backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 8.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 34.w),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, Ronald A. Martin",
                          style: textStyle.titleStyle,
                        ),
                        Text(
                          "What Would you like to learn Today?",
                          style: textStyle.subMulishStyle,
                        ),
                        Text(
                          "Search Below.",
                          style: textStyle.subMulishStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 70.w,
                    ),
                    SvgPicture.asset(
                      "assets/image/notifications.svg",
                      width: 40.w,
                      height: 40.h,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 44.h,
              ),
              const searchTextField(),
              SizedBox(
                height: 30.h,
              ),
              const bannerSpecial(),
              SizedBox(
                height: 30.h,
              ),
              const Categories(),
              SizedBox(
                height: 15.h,
              ),
              const listCategories(),
              SizedBox(
                height: 40.h,
              ),
              const PopularCourses(),
              SizedBox(
                height: 10.h,
              ),
              const listCoursesButton(),
              SizedBox(
                height: 20.h,
              ),
              const listCourses(),
              SizedBox(
                height: 30.h,
              ),
              const Mentors(),
              SizedBox(
                height: 15.h,
              ),
              const listMentor()
            ],
          ),
        ),
      ),
    );
  }
}

class Mentors extends StatelessWidget {
  const Mentors({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<homeModel>();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 34.w),
      child: Row(
        children: [
          Text(
            "Top Mentor",
            style: textStyle.subTitleStyle,
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => model.goToTopMentors(context),
            child: Row(
              children: [
                Text(
                  "SEE ALL",
                  style: textStyle.subTitleMainStyle,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: colorrs.mainColor,
                  size: 14.w,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<homeModel>();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 34.w),
      child: Row(
        children: [
          Text(
            "Categories",
            style: textStyle.subTitleStyle,
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => model.goToCategory(context),
            child: Row(
              children: [
                Text(
                  "SEE ALL",
                  style: textStyle.subTitleMainStyle,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: colorrs.mainColor,
                  size: 14.w,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PopularCourses extends StatelessWidget {
  const PopularCourses({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<homeModel>();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 34.w),
      child: Row(
        children: [
          Text(
            "Polupar Courses",
            style: textStyle.subTitleStyle,
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => model.goToPopularCourses(context),
            child: Row(
              children: [
                Text(
                  "SEE ALL",
                  style: textStyle.subTitleMainStyle,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: colorrs.mainColor,
                  size: 14.w,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class searchTextField extends StatelessWidget {
  const searchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<homeModel>();
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

class bannerSpecial extends StatelessWidget {
  const bannerSpecial({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
        "assets/image/offer.svg",
        width: 360.w,
        height: 180.h,
      ),
    );
  }
}

class listCategories extends StatelessWidget {
  const listCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<homeModel>();
    return Center(
      child: SizedBox(
        height: 20.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: model.listCategories.length,
          itemBuilder: (BuildContext context, int index) => index != 1
              ? SizedBox(
                  height: 20.h,
                  child: GestureDetector(
                      onTap: () => model.setValCategories(index),
                      child: Text(
                        model.listCategories[index],
                        style: model.valCategory == index
                            ? textStyle.activeMulishStyle
                            : textStyle.inActiveMulishStyle,
                      )),
                )
              : SizedBox(
                  height: 20.h,
                  child: GestureDetector(
                    onTap: () => model.setValCategories(index),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 22.w),
                      child: Text(
                        model.listCategories[index],
                        style: model.valCategory == index
                            ? textStyle.activeMulishStyle
                            : textStyle.inActiveMulishStyle,
                      ),
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}

class listCoursesButton extends StatelessWidget {
  const listCoursesButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<homeModel>();
    return SizedBox(
      height: 30.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: model.listCourses.length,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: index != 0 && index != model.listCourses.length
              ? EdgeInsets.symmetric(horizontal: 12.w)
              : const EdgeInsets.symmetric(horizontal: 0),
          child: SizedBox(
            height: 30.h,
            child: ElevatedButton(
              onPressed: () => model.setValCourses(index),
              style: ButtonStyle(
                  elevation: const MaterialStatePropertyAll(0),
                  backgroundColor: model.valCourses == index
                      ? const MaterialStatePropertyAll(colorrs.darkGreenColor)
                      : const MaterialStatePropertyAll(colorrs.buttonGreyColor),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)))),
              child: Text(
                model.listCourses[index],
                style: model.valCourses == index
                    ? textStyle.activeWhiteMulishStyle
                    : textStyle.inActiveWhiteMulishStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class listCourses extends StatelessWidget {
  const listCourses({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<homeModel>();
    return SizedBox(
      height: 240.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) => Padding(
            padding: EdgeInsets.only(bottom: 20.h),
            child: listCoursesItem(
              index: index,
            )),
      ),
    );
  }
}

class listCoursesItem extends StatelessWidget {
  int index;
  listCoursesItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Container(
        width: 280.w,
        height: 240.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 3, // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 280.w,
              height: 132.h,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15)),
                image: DecorationImage(
                    image: AssetImage("assets/image/image.png"),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              width: 280.w,
              height: 88.h,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Graphic Design",
                          style: textStyle.orangeMulishStyle,
                        ),
                        SvgPicture.asset(
                          "assets/image/bookMark.svg",
                          width: 15.w,
                          height: 18.h,
                        ),
                      ],
                    ),
                    Text(
                      "Graphic Design Advanced",
                      style: textStyle.subMulishStyle,
                    ),
                    SizedBox(
                      height: 11.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "\$24",
                          style: textStyle.activeMulishStyle,
                        ),
                        SizedBox(
                          width: 17.w,
                        ),
                        const VerticalDivider(
                          color: Colors.black,
                          thickness: 2,
                          width: 1,
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        SvgPicture.asset(
                          "assets/image/Star.svg",
                          width: 12.w,
                          height: 12.h,
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Text(
                          "4.2",
                          style: textStyle.subMulishStyle,
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        const VerticalDivider(
                          color: Colors.black,
                          thickness: 2,
                          width: 1,
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Text(
                          "7830 std",
                          style: textStyle.subMulishStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class listMentor extends StatelessWidget {
  const listMentor({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<homeModel>();
    return Padding(
      padding: EdgeInsets.only(bottom: 27.h),
      child: SizedBox(
        height: 114.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) => Padding(
            padding: EdgeInsets.only(bottom: 20.h),
            child: const listMentorItem(),
          ),
        ),
      ),
    );
  }
}

class listMentorItem extends StatelessWidget {
  const listMentorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 80.w,
            height: 70.h,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                  image: AssetImage("assets/image/image.png"),
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(
            height: 4.h,
          ),
          Text(
            "Jensen",
            style: textStyle.inActiveWhiteMulishStyle,
          ),
        ],
      ),
    );
  }
}
