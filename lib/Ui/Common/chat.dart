import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Domain/models/commonModels/chat_model.dart';
import 'package:teelead/Style/colors.dart';
import 'package:teelead/Style/text_style.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChatModel(),
      child: const subChat(),
    );
  }
}

class subChat extends StatelessWidget {
  const subChat({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: colorrs.backgroundColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 34.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 90.h,
                  ),
                  const listChat()
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.only(bottom: 51.h),
                child: const messageField(),
              )),
          const Positioned(top: 0, left: 0, right: 0, child: titleChat()),
        ],
      ),
    ));
  }
}

class listChat extends StatelessWidget {
  const listChat({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<ChatModel>();
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 14,
      itemBuilder: (BuildContext context, int index) => Padding(
          padding: EdgeInsets.only(
              bottom: 15.h,
              right: index == 0 ? 130.w : 0,
              left: index != 0 ? 130.w : 0),
          child: listChatItem(
            index: index,
          )),
    );
  }
}

class listChatItem extends StatelessWidget {
  int index;
  listChatItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58.h,
      decoration: BoxDecoration(
          color: index == 0 ? colorrs.darkGreenColor : colorrs.buttonGreyColor,
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.w,
            ),
            child: Text(
              "Hi, Nicholas Good Evening",
              style: index == 0 ? textStyle.chatStyle : textStyle.myChatStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 7.w),
            child: Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: Text(
                  "12:45",
                  style: index == 0
                      ? textStyle.ChatMessageStyle
                      : textStyle.ChatMyMessageStyle,
                )),
          ),
        ],
      ),
    );
  }
}

class listCourses extends StatelessWidget {
  const listCourses({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<ChatModel>();
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 14,
      itemBuilder: (BuildContext context, int index) => Padding(
          padding: EdgeInsets.only(bottom: 20.h),
          child: listCoursesItem(
            index: index,
          )),
    );
  }
}

class listCoursesItem extends StatelessWidget {
  int index;
  listCoursesItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Container(
        width: 360.w,
        height: 130.h,
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
        child: Row(
          children: [
            Container(
              width: 130.w,
              height: 130.h,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 3, // changes position of shadow
                    ),
                  ],
                  image: const DecorationImage(
                    image: AssetImage("assets/image/imageCourses.png"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  )),
            ),
            Container(
              width: 230.w,
              height: 130.h,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  )),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15.h,
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
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Graphic Design Advanced",
                      style: textStyle.subMulishStyle,
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "\$24",
                          style: textStyle.activeMulishStyle,
                        ),
                        Text(
                          "\$42",
                          style: textStyle.saleMulishStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
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
            )
          ],
        ),
      ),
    );
  }
}

class messageField extends StatelessWidget {
  const messageField({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 360.w,
        height: 60.h,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: colorrs.buttonGreyColor, width: 1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 22.w,
            ),
            SizedBox(
              width: 250.w,
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: Colors.white,
                    hintStyle: textStyle.subMulishStyle,
                    hintText: "Message"),
              ),
            ),
            const Spacer(),
            GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  "assets/image/media.svg",
                  width: 9.5.w,
                  height: 18.h,
                )),
            SizedBox(
              width: 15.5.w,
            ),
            const audioButton(),
            SizedBox(
              width: 9.w,
            ),
          ],
        ),
      ),
    );
  }
}

class audioButton extends StatelessWidget {
  const audioButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 48.w,
        height: 48.h,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: colorrs.mainColor,
        ),
        child: Center(
            child: SvgPicture.asset(
          "assets/image/mice.svg",
          width: 17.2,
          height: 21.h,
        )),
      ),
    );
  }
}

class titleChat extends StatelessWidget {
  const titleChat({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<ChatModel>();
    return Container(
      decoration: const BoxDecoration(
        color: colorrs.backgroundColor,
      ),
      width: MediaQuery.of(context).size.width,
      height: 75.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 34.w),
        child: Row(
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
              "Indox",
              style: textStyle.titleStyle,
            ),
            const Spacer(),
            GestureDetector(
              child: SvgPicture.asset(
                "assets/image/call_chat.svg",
                width: 20.w,
                height: 20.h,
              ),
              onTap: () {},
            ),
            SizedBox(
              width: 20.w,
            ),
            GestureDetector(
              child: SvgPicture.asset(
                "assets/image/search.svg",
                width: 20.w,
                height: 20.h,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
