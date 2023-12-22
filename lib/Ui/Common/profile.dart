import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Domain/models/commonModels/profile_model.dart';
import 'package:teelead/Style/colors.dart';
import 'package:teelead/Style/text_style.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileModel(),
      child: const subProfile(),
    );
  }
}

class subProfile extends StatelessWidget {
  const subProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<ProfileModel>();
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 34.w),
          child: Stack(
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    const titleProfile(),
                    SizedBox(
                      height: 25.h,
                    ),
                    Container(
                      width: 360.w,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 3, // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 87.h,
                          ),
                          Center(
                              child: Text(
                            model.fullName,
                            style: textStyle.titleStyle,
                          )),
                          SizedBox(
                            height: 4.h,
                          ),
                          Center(
                              child: Text(
                            model.email,
                            style: textStyle.inActiveWhiteMulishStyle,
                          )),
                          SizedBox(
                            height: 26.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 29.w),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () => model.goToEditProfie(context),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset(
                                        "assets/image/profileSvg.svg",
                                        width: 16.w,
                                        height: 20.h,
                                      ),
                                      SizedBox(
                                        width: 14.w,
                                      ),
                                      Text("Edit Profile",
                                          style: textStyle.chapterStyle),
                                      const Spacer(),
                                      SvgPicture.asset(
                                        "assets/image/goChapter.svg",
                                        width: 10.2.w,
                                        height: 18.h,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 37.h,
                                ),
                                GestureDetector(
                                  onTap: () => model.goToEditPayment(context),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset(
                                        "assets/image/transaction.svg",
                                        width: 20.w,
                                        height: 19.h,
                                      ),
                                      SizedBox(
                                        width: 14.w,
                                      ),
                                      Text("Payment Option",
                                          style: textStyle.chapterStyle),
                                      const Spacer(),
                                      SvgPicture.asset(
                                        "assets/image/goChapter.svg",
                                        width: 10.2.w,
                                        height: 18.h,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 37.h,
                                ),
                                GestureDetector(
                                  onTap: () =>
                                      model.goToEditNotifications(context),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset(
                                        "assets/image/notification.svg",
                                        width: 17.w,
                                        height: 20.h,
                                      ),
                                      SizedBox(
                                        width: 14.w,
                                      ),
                                      Text("Notifications",
                                          style: textStyle.chapterStyle),
                                      const Spacer(),
                                      SvgPicture.asset(
                                        "assets/image/goChapter.svg",
                                        width: 10.2.w,
                                        height: 18.h,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 37.h,
                                ),
                                GestureDetector(
                                  onTap: () => model.goToSecurity(context),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset(
                                        "assets/image/secure.svg",
                                        width: 20.w,
                                        height: 20.h,
                                      ),
                                      SizedBox(
                                        width: 14.w,
                                      ),
                                      Text("Security",
                                          style: textStyle.chapterStyle),
                                      const Spacer(),
                                      SvgPicture.asset(
                                        "assets/image/goChapter.svg",
                                        width: 10.2.w,
                                        height: 18.h,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 37.h,
                                ),
                                GestureDetector(
                                  onTap: () => model.goToLanguage(context),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset(
                                        "assets/image/lang.svg",
                                        width: 19.8.w,
                                        height: 18.h,
                                      ),
                                      SizedBox(
                                        width: 14.w,
                                      ),
                                      Text("Language",
                                          style: textStyle.chapterStyle),
                                      const Spacer(),
                                      Text("English (US)",
                                          style: textStyle.langStyle),
                                      SizedBox(
                                        width: 15.w,
                                      ),
                                      SvgPicture.asset(
                                        "assets/image/goChapter.svg",
                                        width: 10.2.w,
                                        height: 18.h,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 37.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/image/themeMode.svg",
                                      width: 22.w,
                                      height: 14.h,
                                    ),
                                    SizedBox(
                                      width: 14.w,
                                    ),
                                    Text("Dark Mode",
                                        style: textStyle.chapterStyle),
                                    const Spacer(),
                                    SvgPicture.asset(
                                      "assets/image/goChapter.svg",
                                      width: 10.2.w,
                                      height: 18.h,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 37.h,
                                ),
                                GestureDetector(
                                  onTap: () => model.goToTerms(context),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset(
                                        "assets/image/terms.svg",
                                        width: 16.w,
                                        height: 18.h,
                                      ),
                                      SizedBox(
                                        width: 14.w,
                                      ),
                                      Text("Terms & Conditions",
                                          style: textStyle.chapterStyle),
                                      const Spacer(),
                                      SvgPicture.asset(
                                        "assets/image/goChapter.svg",
                                        width: 10.2.w,
                                        height: 18.h,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 37.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/image/helping.svg",
                                      width: 23.w,
                                      height: 23.h,
                                    ),
                                    SizedBox(
                                      width: 14.w,
                                    ),
                                    Text("Help Center",
                                        style: textStyle.chapterStyle),
                                    const Spacer(),
                                    SvgPicture.asset(
                                      "assets/image/goChapter.svg",
                                      width: 10.2.w,
                                      height: 18.h,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 37.h,
                                ),
                                GestureDetector(
                                  onTap: () => model.goToInvite(context),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset(
                                        "assets/image/invite.svg",
                                        width: 20.w,
                                        height: 18.h,
                                      ),
                                      SizedBox(
                                        width: 14.w,
                                      ),
                                      Text("Invite Friends",
                                          style: textStyle.chapterStyle),
                                      const Spacer(),
                                      SvgPicture.asset(
                                        "assets/image/goChapter.svg",
                                        width: 10.2.w,
                                        height: 18.h,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                        ],
                      ),
                    ),
                  ]),
              Padding(
                padding: EdgeInsets.only(top: 50.h),
                child: Center(
                  child: Container(
                    width: 110.w,
                    height: 110.h,
                    decoration: BoxDecoration(
                      image: model.urlImage.isEmpty
                          ? null
                          : DecorationImage(
                              image: NetworkImage(model.urlImage),
                              fit: BoxFit.cover),
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      border:
                          Border.all(width: 4, color: colorrs.darkGreenColor),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class titleProfile extends StatelessWidget {
  const titleProfile({super.key});

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
          "Profile",
          style: textStyle.titleStyle,
        ),
      ],
    );
  }
}
