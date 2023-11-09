import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teelead/Style/colors.dart';

abstract class textStyle{
  static TextStyle titleStyle =  TextStyle(fontFamily: "JostSemiBold", fontSize: 24.sp,color: Colors.black);
  static TextStyle subTitleStyle =  TextStyle(fontFamily: "MulishExtraBold", fontSize: 16.sp,color: Colors.black);
  static TextStyle buttonStyle =  TextStyle(fontFamily: "JostSemiBold", fontSize: 18.sp,color: Colors.white);
  static TextStyle subSubTitleStyle =  TextStyle(fontFamily: "MulishExtraBold", fontSize: 14.sp,color: Colors.black);
  static TextStyle subMulishStyle =  TextStyle(fontFamily: "MulishBold", fontSize: 14.sp,color: colorrs.subBlackColor);
}