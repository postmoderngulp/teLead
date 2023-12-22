import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:teelead/Navigation/Navigate.dart';
import 'package:teelead/Style/colors.dart';
import 'package:teelead/Style/text_style.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  late int _currentPage;
  final controller = PageController();

  @override
  void initState() {
    _currentPage = 0;
    controller.addListener(() {
      setState(() {
        _currentPage = controller.page!.toInt();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _currentPage = 0;
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: colorrs.backgroundColor,
        bottomSheet: Container(
          color: colorrs.backgroundColor,
          height: 120.h,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 35.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: SmoothPageIndicator(
                    onDotClicked: (index) => controller.animateToPage(index,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn),
                    controller: controller,
                    count: 3,
                    effect: WormEffect(
                      activeDotColor: colorrs.mainColor,
                      dotColor: colorrs.dotColor,
                      dotHeight: 10.h,
                      dotWidth: 10.w,
                    ),
                  ),
                ),
                const Spacer(),
                _currentPage == 2
                    ? const getStartedButton()
                    : GestureDetector(
                        onTap: () => controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn),
                        child: SvgPicture.asset(
                          "assets/image/onboardButton.svg",
                          width: 60.w,
                          height: 60.h,
                        ),
                      )
              ],
            ),
          ),
        ),
        body: Container(
          color: colorrs.backgroundColor,
          padding: EdgeInsets.only(bottom: 120.h),
          child: PageView(
            physics: const BouncingScrollPhysics(),
            controller: controller,
            children: [
              Container(
                color: colorrs.backgroundColor,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 50.h,
                      ),
                      GestureDetector(
                        onTap: () => controller.animateToPage(2,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn),
                        child: Padding(
                          padding: EdgeInsets.only(right: 34.w),
                          child: Text(
                            "Skip",
                            style: textStyle.boardStyle,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Center(
                        child: Text(
                          "Online Learning",
                          style: textStyle.titleStyle,
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 34.w),
                          child: Text(
                            "We Provide Classes Online Classes and Pre Recorded Leactures.!",
                            softWrap: true,
                            style: textStyle.subMulishStyle,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100.h,
                      ),
                    ]),
              ),
              Container(
                color: colorrs.backgroundColor,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 50.h,
                      ),
                      GestureDetector(
                        onTap: () => controller.animateToPage(2,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn),
                        child: Padding(
                          padding: EdgeInsets.only(right: 34.w),
                          child: Text(
                            "Skip",
                            style: textStyle.boardStyle,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Center(
                        child: Text(
                          "Learn from Anytime",
                          style: textStyle.titleStyle,
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 34.w),
                          child: Text(
                            "Booked or Same the Lectures for Future",
                            softWrap: true,
                            style: textStyle.subMulishStyle,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100.h,
                      ),
                    ]),
              ),
              Container(
                color: colorrs.backgroundColor,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 50.h,
                      ),
                      GestureDetector(
                        onTap: () => controller.animateToPage(2,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn),
                        child: Padding(
                          padding: EdgeInsets.only(right: 34.w),
                          child: Text(
                            "Skip",
                            style: textStyle.boardStyle,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Center(
                        child: Text(
                          "Get Online Certificate",
                          style: textStyle.titleStyle,
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 34.w),
                          child: Text(
                            "Analyse your scores and Track your results",
                            softWrap: true,
                            style: textStyle.subMulishStyle,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100.h,
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class getStartedButton extends StatelessWidget {
  const getStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 200.w,
        height: 60.h,
        child: ElevatedButton(
            onPressed: () =>
                Navigator.of(context).pushNamed(NavigationPaths.signInPath),
            style: ButtonStyle(
                backgroundColor:
                    const MaterialStatePropertyAll(colorrs.mainColor),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Get Started",
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
