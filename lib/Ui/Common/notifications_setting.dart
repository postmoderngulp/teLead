import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Style/colors.dart';
import 'package:teelead/Style/text_style.dart';
import 'package:teelead/Domain/models/commonModels/notifications_setting_model.dart';

class NotificationsSetting extends StatelessWidget {
  const NotificationsSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NotificationsSettingModel(),
      child: const subNotificationsSetting(),
    );
  }
}

class subNotificationsSetting extends StatelessWidget {
  const subNotificationsSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 35.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25.h,
              ),
              const titleNotification(),
              SizedBox(
                height: 28.h,
              ),
              const listNotifications(),
            ],
          ),
        ),
      ),
    ));
  }
}

class listNotifications extends StatelessWidget {
  const listNotifications({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<NotificationsSettingModel>();
    return ListView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) => Padding(
          padding: EdgeInsets.only(bottom: 40.h),
          child: listNotificationsItem(
            index: index,
          )),
    );
  }
}

bool val = false;
final list = [
  "Special Offers",
  "Sound",
  "Vibrate",
  "General Notification",
  "Promo & Discount",
  "Payment Options",
  "App Update",
  "New Service Available",
  "New Tips Available"
];

class listNotificationsItem extends StatefulWidget {
  int index;
  listNotificationsItem({super.key, required this.index});

  @override
  State<listNotificationsItem> createState() => _listNotificationsItemState();
}

class _listNotificationsItemState extends State<listNotificationsItem> {
  @override
  Widget build(BuildContext context) {
    final model = context.watch<NotificationsSettingModel>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          list[widget.index],
          style: textStyle.notMulishStyle,
        ),
        const Spacer(),
        SizedBox(
            width: 50.w,
            height: 30.h,
            child: CupertinoSwitch(
                activeColor: colorrs.mainColor,
                value: val,
                onChanged: (value) {
                  setState(() {
                    val = value;
                  });
                }))
      ],
    );
  }
}

class titleNotification extends StatelessWidget {
  const titleNotification({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<NotificationsSettingModel>();
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
          "Notification",
          style: textStyle.titleStyle,
        ),
      ],
    );
  }
}
