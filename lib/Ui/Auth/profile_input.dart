import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Style/colors.dart';
import 'package:teelead/Style/text_style.dart';

import '../../Domain/models/authModels/profile_input_model.dart';

class profileInput extends StatelessWidget {
  const profileInput({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => profileInputModel(),
      child: const subProfileInput(),
    );
  }
}

class subProfileInput extends StatelessWidget {
  const subProfileInput({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: colorrs.backgroundColor,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 34.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30.h,
              ),
              Row(
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
                    "Fill Your Profile",
                    style: textStyle.titleStyle,
                  )
                ],
              ),
              SizedBox(
                height: 42.h,
              ),
              const Center(child: Avatar()),
              SizedBox(
                height: 30.h,
              ),
              const fullNameTextField(),
              SizedBox(
                height: 20.h,
              ),
              const nickNameTextField(),
              SizedBox(
                height: 20.h,
              ),
              const dateTextField(),
              SizedBox(
                height: 20.h,
              ),
              const phoneTextField(),
              SizedBox(
                height: 20.h,
              ),
              const genderDropField(),
              SizedBox(
                height: 50.h,
              ),
              const continueButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class fullNameTextField extends StatelessWidget {
  const fullNameTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<profileInputModel>();
    return Center(
      child: SizedBox(
        width: 360.w,
        height: 60.h,
        child: CupertinoTextField(
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) => model.fullName = value,
          padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 22.w),
          placeholder: "Full Name",
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

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<profileInputModel>();
    return GestureDetector(
        onTap: () => model.pickImage(),
        child: model.avatar != null
            ? Container(
                width: 100.w,
                height: 100.h,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: FileImage(model.avatar!), fit: BoxFit.cover)),
              )
            : SvgPicture.asset(
                "assets/image/Profile.svg",
                width: 100.w,
                height: 100.h,
              ));
  }
}

class nickNameTextField extends StatelessWidget {
  const nickNameTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<profileInputModel>();
    return Center(
      child: SizedBox(
        width: 360.w,
        height: 60.h,
        child: CupertinoTextField(
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) => model.nickName = value,
          padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 22.w),
          placeholder: "Nick Name",
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

class dateTextField extends StatelessWidget {
  const dateTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<profileInputModel>();
    return Center(
      child: SizedBox(
        width: 360.w,
        height: 60.h,
        child: CupertinoTextField(
          keyboardType: TextInputType.datetime,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) => model.dob = value,
          padding: EdgeInsets.symmetric(vertical: 22.h),
          prefix: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 22.h),
            child: SvgPicture.asset(
              "assets/image/date.svg",
              width: 18.w,
              height: 20.h,
            ),
          ),
          placeholder: "Date of Birth",
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

class phoneTextField extends StatelessWidget {
  const phoneTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<profileInputModel>();
    return Center(
      child: SizedBox(
        width: 360.w,
        height: 60.h,
        child: CupertinoTextField(
          keyboardType: TextInputType.number,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) => model.phone = value,
          padding: EdgeInsets.symmetric(vertical: 22.h),
          prefix: Padding(
            padding: EdgeInsets.only(
              left: 20.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/image/usa.svg",
                  width: 18.w,
                  height: 18.h,
                ),
                SizedBox(
                  width: 5.w,
                ),
                const Icon(Icons.keyboard_arrow_down),
              ],
            ),
          ),
          placeholder: "( +1 )  724-848-1225",
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

class genderDropField extends StatelessWidget {
  const genderDropField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<profileInputModel>();
    List<String> sexList = ["Мужской", "Женский"];
    final dropValue = ValueNotifier('');
    return SizedBox(
      width: 360.w,
      height: 60.h,
      child: Material(
        child: ValueListenableBuilder(
            valueListenable: dropValue,
            builder: (BuildContext context, String value, _) {
              return DropdownButtonFormField(
                decoration: InputDecoration(
                  filled: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 22.w, vertical: 21.h),
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Colors.transparent, width: 0)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Colors.transparent, width: 0)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Colors.transparent, width: 0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Colors.transparent, width: 0)),
                ),
                isExpanded: true,
                hint: Text(
                  'Gender',
                  style: textStyle.subMulishStyle,
                ),
                icon: const Icon(
                  Icons.arrow_drop_down_outlined,
                  color: Colors.black,
                ),
                value: (value.isEmpty) ? null : value,
                onChanged: (choice) {
                  dropValue.value = choice.toString();
                  choice == 'Мужской'
                      ? model.gender = "Male"
                      : model.gender = "Female";
                },
                items: sexList
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        ))
                    .toList(),
              );
            }),
      ),
    );
  }
}

class continueButton extends StatelessWidget {
  const continueButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.read<profileInputModel>();
    return SizedBox(
        width: 350.w,
        height: 60.h,
        child: ElevatedButton(
            onPressed: () => model.putProfile(model.fullName, model.nickName,
                model.phone, model.dob, model.gender, context, model.avatar),
            style: ButtonStyle(
                backgroundColor:
                    const MaterialStatePropertyAll(colorrs.mainColor),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Continue",
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
