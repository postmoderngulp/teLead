import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Domain/models/commonModels/invite_model.dart';
import 'package:teelead/Style/text_style.dart';
import 'package:teelead/Style/colors.dart';

class InviteFriends extends StatelessWidget {
  const InviteFriends({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => InviteFriendsModel(),
      child: const subInviteFriends(),
    );
  }
}

class subInviteFriends extends StatelessWidget {
  const subInviteFriends({super.key});

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
              SizedBox(height: 25.h),
              const titleInvite(),
              SizedBox(height: 36.h),
              const listInvite(),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Share Invite Via",
                    style: textStyle.JostTitleStyle,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  SizedBox(
                    width: 50.w,
                    height: 50.h,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            elevation: const MaterialStatePropertyAll(0),
                            backgroundColor: const MaterialStatePropertyAll(
                                Colors.transparent),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                    side: const BorderSide(
                                        color: Colors.black, width: 1)))),
                        onPressed: () {},
                        child: SvgPicture.asset(
                          "assets/image/Shares.svg",
                          width: 25.w,
                          height: 25.h,
                        )),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class listInvite extends StatelessWidget {
  const listInvite({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<InviteFriendsModel>();
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
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: const EdgeInsets.only(bottom: 25.5),
          child: GestureDetector(
              onTap: () {}, child: listInviteItem(index: index)),
        ),
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: colorrs.buttonGreyColor,
          height: 1,
        ),
      ),
    );
  }
}

class listInviteItem extends StatelessWidget {
  int index;
  listInviteItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 360.w,
        height: 72.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25.w, top: 25.h),
              child: Container(
                decoration: const BoxDecoration(
                    color: colorrs.buttonGreyColor,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("assets/image/BG.png"),
                        fit: BoxFit.cover)),
                width: 50.w,
                height: 50.h,
              ),
            ),
            SizedBox(
              width: 8.w,
            ),
            Padding(
              padding: EdgeInsets.only(top: 28.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Virginia M. Patterson",
                    style: textStyle.subTitleStyle,
                  ),
                  Text(
                    "(+1) 702-897-7965",
                    style: textStyle.subMulishStyle,
                  )
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(top: 36.h),
              child: const inviteButton(),
            ),
            SizedBox(
              width: 20.w,
            ),
          ],
        ));
  }
}

class inviteButton extends StatelessWidget {
  const inviteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.w,
      height: 28.h,
      child: ElevatedButton(
          style: ButtonStyle(
              elevation: const MaterialStatePropertyAll(0),
              backgroundColor: const MaterialStatePropertyAll(
                  1 == 1 ? colorrs.mainColor : colorrs.buttonGreyColor),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)))),
          onPressed: () {},
          child: Text(
            "Invite",
            style: 1 == 1
                ? textStyle.activeWhiteMulishStyle
                : textStyle.inActiveWhiteMulishStyle,
          )),
    );
  }
}

class titleInvite extends StatelessWidget {
  const titleInvite({super.key});

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
          "Invite Frineds",
          style: textStyle.titleStyle,
        ),
      ],
    );
  }
}
