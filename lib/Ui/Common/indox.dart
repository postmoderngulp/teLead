import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Style/text_style.dart';
import 'package:teelead/Style/colors.dart';
import 'package:teelead/Domain/models/commonModels/indox_model.dart';

class Indox extends StatelessWidget {
  const Indox({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => IndoxModel(),
      child: const SubIndox(),
    );
  }
}

class SubIndox extends StatelessWidget {
  const SubIndox({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<IndoxModel>();
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
              const titleIndox(),
              SizedBox(height: 16.h),
              const GroupButton(),
              SizedBox(height: 20.h),
              model.isChat ? const listChat() : const listCalls(),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    ));
  }
}

class listChat extends StatelessWidget {
  const listChat({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<IndoxModel>();
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
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) => GestureDetector(
              onTap: () => model.goToChat(context),
              child: listChatItem(index: index))),
    );
  }
}

class listChatItem extends StatelessWidget {
  int index;
  listChatItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 360.w,
        height: 92.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                width: 46.w,
                height: 46.h,
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
                    "Why Using Graphic De..",
                    style: textStyle.subTitleStyle,
                  ),
                  Text(
                    "Why Using Graphic De..",
                    style: textStyle.subMulishStyle,
                  )
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(top: 15.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 24.w,
                    height: 24.h,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: colorrs.mainColor,
                    ),
                    child: Center(
                      child: Text(
                        "01",
                        style: textStyle.ChatMessageStyle,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "14:59",
                    style: textStyle.ChatMessageTimeStyle,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 30.w,
            ),
          ],
        ));
  }
}

class listCalls extends StatelessWidget {
  const listCalls({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<IndoxModel>();
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
          itemCount: 9,
          itemBuilder: (BuildContext context, int index) =>
              listCallsItem(index: index)),
    );
  }
}

class listCallsItem extends StatelessWidget {
  int index;
  listCallsItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 360.w,
        height: 92.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                width: 46.w,
                height: 46.h,
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
                    "Patricia D. Regalado",
                    style: textStyle.subTitleStyle,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/image/incoming.svg",
                        width: 14.w,
                        height: 14.h,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        "Incoming   |   Nov 03, 202X",
                        style: textStyle.inActiveWhiteMulishStyle,
                      )
                    ],
                  )
                ],
              ),
            ),
            const Spacer(),
            Padding(
                padding: EdgeInsets.only(top: 35.h),
                child: SvgPicture.asset("assets/image/calls.svg")),
            SizedBox(
              width: 30.w,
            ),
          ],
        ));
  }
}

class GroupButton extends StatelessWidget {
  const GroupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const ChatButton(),
        SizedBox(
          width: 20.w,
        ),
        const CallsButton(),
      ],
    );
  }
}

class ChatButton extends StatelessWidget {
  const ChatButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<IndoxModel>();
    return SizedBox(
      width: 170.w,
      height: 48.h,
      child: ElevatedButton(
        onPressed: () => model.setChat(true),
        style: ButtonStyle(
            elevation: const MaterialStatePropertyAll(0),
            backgroundColor: MaterialStatePropertyAll(model.isChat
                ? colorrs.darkGreenColor
                : colorrs.buttonGreyColor),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)))),
        child: Text("Chat",
            style: model.isChat
                ? textStyle.activeWhiteMulishStyle
                : textStyle.inActiveWhiteMulishStyle),
      ),
    );
  }
}

class CallsButton extends StatelessWidget {
  const CallsButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<IndoxModel>();
    return SizedBox(
      width: 170.w,
      height: 48.h,
      child: ElevatedButton(
        onPressed: () => model.setChat(false),
        style: ButtonStyle(
            elevation: const MaterialStatePropertyAll(0),
            backgroundColor: MaterialStatePropertyAll(model.isChat
                ? colorrs.buttonGreyColor
                : colorrs.darkGreenColor),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)))),
        child: Text("Calls",
            style: model.isChat
                ? textStyle.inActiveWhiteMulishStyle
                : textStyle.activeWhiteMulishStyle),
      ),
    );
  }
}

class titleIndox extends StatelessWidget {
  const titleIndox({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<IndoxModel>();
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
          "Indox",
          style: textStyle.titleStyle,
        ),
        const Spacer(),
        GestureDetector(
          child: SvgPicture.asset(
            "assets/image/search.svg",
            width: 20.w,
            height: 20.h,
          ),
          onTap: () {},
        ),
      ],
    );
  }
}
