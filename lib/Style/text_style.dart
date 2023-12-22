import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teelead/Style/colors.dart';

abstract class textStyle {
  static TextStyle titleStyle = TextStyle(
      fontFamily: "JostSemiBold", fontSize: 24.sp, color: Colors.black);
  static TextStyle chatStyle = TextStyle(
      fontFamily: "JostSemiBold", fontSize: 14.sp, color: Colors.white);
  static TextStyle boardStyle = TextStyle(
      fontFamily: "JostSemiBold", fontSize: 16.sp, color: Colors.black);
  static TextStyle transactionButtonStyle =
      TextStyle(fontFamily: "MulishBold", fontSize: 12.sp, color: Colors.white);
  static TextStyle myChatStyle = TextStyle(
      fontFamily: "JostSemiBold", fontSize: 14.sp, color: Colors.black);
  static TextStyle subTitleStyle = TextStyle(
      fontFamily: "MulishExtraBold", fontSize: 16.sp, color: Colors.black);
  static TextStyle subTitleMainStyle = TextStyle(
      fontFamily: "MulishExtraBold", fontSize: 16.sp, color: colorrs.mainColor);
  static TextStyle langStyle = TextStyle(
      fontFamily: "MulishExtraBold", fontSize: 14.sp, color: colorrs.mainColor);
  static TextStyle buttonStyle = TextStyle(
      fontFamily: "JostSemiBold", fontSize: 18.sp, color: Colors.white);
  static TextStyle JostTitleStyle = TextStyle(
      fontFamily: "JostSemiBold", fontSize: 18.sp, color: Colors.black);
  static TextStyle subSubTitleStyle = TextStyle(
      fontFamily: "MulishExtraBold", fontSize: 14.sp, color: Colors.black);
  static TextStyle subMulishStyle = TextStyle(
      fontFamily: "MulishBold", fontSize: 14.sp, color: colorrs.subBlackColor);
  static TextStyle inputCodeStyle =
      TextStyle(fontFamily: "MulishBold", fontSize: 22.sp, color: Colors.black);
  static TextStyle bigSubMulishStyle = TextStyle(
      fontFamily: "MulishBold", fontSize: 18.sp, color: colorrs.subBlackColor);
  static TextStyle numberFieldStyle =
      TextStyle(fontFamily: "MulishBold", fontSize: 18.sp, color: Colors.black);
  static TextStyle ChatMessageStyle =
      TextStyle(fontFamily: "MulishBold", fontSize: 11.sp, color: Colors.white);
  static TextStyle ChatMyMessageStyle =
      TextStyle(fontFamily: "MulishBold", fontSize: 11.sp, color: Colors.black);
  static TextStyle ChatMessageTimeStyle =
      TextStyle(fontFamily: "MulishBold", fontSize: 11.sp, color: Colors.black);
  static TextStyle chapterStyle =
      TextStyle(fontFamily: "MulishBold", fontSize: 15.sp, color: Colors.black);
  static TextStyle inActiveMulishStyle = TextStyle(
      fontFamily: "MulishBold", fontSize: 15.sp, color: colorrs.greyColor);
  static TextStyle activeWhiteMulishStyle =
      TextStyle(fontFamily: "MulishBold", fontSize: 13.sp, color: Colors.white);
  static TextStyle orangeMulishStyle = TextStyle(
      fontFamily: "MulishBold", fontSize: 12.sp, color: colorrs.orangeColor);
  static TextStyle greenMulishStyle = TextStyle(
      fontFamily: "MulishBold",
      fontSize: 12.sp,
      color: colorrs.darkGreenColor,
      decoration: TextDecoration.underline);
  static TextStyle fieldMulishStyle =
      TextStyle(fontFamily: "MulishBold", fontSize: 12.sp, color: Colors.grey);
  static TextStyle inActiveWhiteMulishStyle =
      TextStyle(fontFamily: "MulishBold", fontSize: 13.sp, color: Colors.black);
  static TextStyle activeMulishStyle = TextStyle(
      fontFamily: "MulishBold", fontSize: 15.sp, color: colorrs.mainColor);
  static TextStyle saleMulishStyle = TextStyle(
      fontFamily: "MulishBold",
      fontSize: 13.sp,
      color: colorrs.greyColor,
      decoration: TextDecoration.lineThrough);
  static TextStyle greyMulishStyle = TextStyle(
    fontFamily: "MulishBold",
    fontSize: 13.sp,
    color: colorrs.greyColor,
  );
  static TextStyle notMulishStyle = TextStyle(
    fontFamily: "MulishBold",
    fontSize: 16.sp,
    color: Colors.black,
  );
  static TextStyle cardNumberStyle = TextStyle(
    fontFamily: "MulishBold",
    fontSize: 17.sp,
    color: Colors.white,
  );
  static TextStyle validCardStyle = TextStyle(
    fontFamily: "MulishBold",
    fontSize: 8.sp,
    color: Colors.white,
  );
  static TextStyle nameCardStyle = TextStyle(
    fontFamily: "MulishBold",
    fontSize: 14.sp,
    color: Colors.white,
  );
}
