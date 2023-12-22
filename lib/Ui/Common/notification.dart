import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Domain/models/commonModels/notification_model.dart';
import 'package:teelead/Style/colors.dart';
import 'package:teelead/Style/text_style.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NotificationModel(),
      child: const SubNotification(),
    );
  }
}

class SubNotification extends StatelessWidget {
  const SubNotification({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: colorrs.backgroundColor,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 34.w),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25.h,
                ),
                const titleCourses(),
                SizedBox(
                  height: 38.h,
                ),
                const listNotification(),
                const addNewCardButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class titleCourses extends StatelessWidget {
  const titleCourses({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<NotificationModel>();
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
          "Notifications",
          style: textStyle.titleStyle,
        ),
      ],
    );
  }
}

class listNotification extends StatelessWidget {
  const listNotification({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<NotificationModel>();
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) => Padding(
          padding: EdgeInsets.only(bottom: 20.h),
          child: listNotificationSubItem(
            index: index,
          )),
    );
  }
}

class addNewCardButton extends StatelessWidget {
  const addNewCardButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.read<NotificationModel>();
    return SizedBox(
        width: 350.w,
        height: 60.h,
        child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor:
                    const MaterialStatePropertyAll(colorrs.mainColor),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Add new card",
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

class listNotificationSubItem extends StatelessWidget {
  int index;
  listNotificationSubItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Today",
          style: textStyle.titleStyle,
        ),
        SizedBox(
          height: 20.h,
        ),
        const ListGroupNotificate(),
      ],
    );
  }
}

class ListGroupNotificate extends StatelessWidget {
  const ListGroupNotificate({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<NotificationModel>();
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 2,
      itemBuilder: (BuildContext context, int index) => Padding(
          padding: EdgeInsets.only(bottom: 20.h),
          child: listNotificationItem(
            index: index,
          )),
    );
  }
}

class listNotificationItem extends StatelessWidget {
  int index;
  listNotificationItem({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<NotificationModel>();
    return Container(
      width: 360.w,
      height: 100.h,
      decoration: BoxDecoration(
          color: colorrs.buttonGreyColor,
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: EdgeInsets.only(top: 21.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 18.w),
                child: Container(
                  width: 52.w,
                  height: 52.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                        image:
                            AssetImage("assets/image/circle_notification.png"),
                        fit: BoxFit.cover),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 0,
                        blurRadius: 2, // changes position of shadow
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 8.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "New Category Course.!",
                    style: textStyle.subTitleStyle,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  const Text("New the 3D Design Course is Availa.."),
                ],
              ),
            ]),
      ),
    );
  }
}
