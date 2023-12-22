import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Style/colors.dart';
import 'package:teelead/Style/text_style.dart';
import 'package:teelead/Domain/models/commonModels/new_card_model.dart';

class NewCard extends StatelessWidget {
  const NewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NewCardnModel(),
      child: const subAddNewCardButton(),
    );
  }
}

class subAddNewCardButton extends StatelessWidget {
  const subAddNewCardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 34.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25.h,
            ),
            const titleNewCard(),
            SizedBox(
              height: 30.h,
            ),
            Stack(
              children: [
                Center(
                  child: SvgPicture.asset(
                    "assets/image/cardBG.svg",
                    width: 360.w,
                    height: 180.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 48.w, top: 27.h),
                  child: SvgPicture.asset(
                    "assets/image/sim.svg",
                    width: 22.w,
                    height: 28.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 46.w, top: 77.h),
                  child: Text(
                    "1234  5678  8765  0876",
                    style: textStyle.cardNumberStyle,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 46.w, top: 105.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: 25.w,
                          child: Text(
                            "Valid Thru",
                            style: textStyle.validCardStyle,
                            softWrap: true,
                          )),
                      Text(
                        "12/28",
                        style: textStyle.nameCardStyle,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 46.w, top: 108),
                  child: Text(
                    "Timmy C. Hernandez",
                    style: textStyle.nameCardStyle,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 31.h,
            ),
            Text(
              "Card Name*",
              style: textStyle.subSubTitleStyle,
            ),
            SizedBox(
              height: 8.h,
            ),
            const nameCard(),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Card Number**",
              style: textStyle.subSubTitleStyle,
            ),
            SizedBox(
              height: 8.h,
            ),
            const numberCard(),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Expiry Date*",
                      style: textStyle.subSubTitleStyle,
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    const dateInput(),
                  ],
                ),
                SizedBox(
                  width: 20.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "CVV*",
                      style: textStyle.subSubTitleStyle,
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    const cvvInput()
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 200.h,
            ),
            const adddNewCardButton()
          ],
        ),
      ),
    ));
  }
}

class adddNewCardButton extends StatelessWidget {
  const adddNewCardButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.read<NewCardnModel>();
    return Center(
      child: SizedBox(
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
                    "Add New Card",
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
              ))),
    );
  }
}

class nameCard extends StatelessWidget {
  const nameCard({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<NewCardnModel>();
    return Center(
      child: SizedBox(
        width: 360.w,
        height: 60.h,
        child: CupertinoTextField(
          padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 12.h),
          autofocus: true,
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) {},
          placeholder: "Belinda C. Cullen",
          placeholderStyle: textStyle.subSubTitleStyle,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}

class dateInput extends StatelessWidget {
  const dateInput({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<NewCardnModel>();
    return Center(
      child: SizedBox(
        width: 180.w,
        height: 60.h,
        child: CupertinoTextField(
          padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 12.h),
          autofocus: true,
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) {},
          placeholder: "12/28",
          placeholderStyle: textStyle.subSubTitleStyle,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}

class cvvInput extends StatelessWidget {
  const cvvInput({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<NewCardnModel>();
    return Center(
      child: SizedBox(
        width: 160.w,
        height: 60.h,
        child: CupertinoTextField(
          padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 12.h),
          autofocus: true,
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) {},
          placeholder: "***",
          placeholderStyle: textStyle.subSubTitleStyle,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}

class numberCard extends StatelessWidget {
  const numberCard({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<NewCardnModel>();
    return Center(
      child: SizedBox(
        width: 360.w,
        height: 60.h,
        child: CupertinoTextField(
          padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 12.h),
          autofocus: true,
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) {},
          placeholder: "****  **65  8765  3456",
          placeholderStyle: textStyle.subSubTitleStyle,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}

class titleNewCard extends StatelessWidget {
  const titleNewCard({super.key});

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
          "Add New Card",
          style: textStyle.titleStyle,
        ),
      ],
    );
  }
}
