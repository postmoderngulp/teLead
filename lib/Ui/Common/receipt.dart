import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Domain/models/commonModels/receiptModel.dart';
import 'package:teelead/Style/colors.dart';
import 'package:teelead/Style/text_style.dart';

class Receipt extends StatelessWidget {
  const Receipt({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ReceiptModel(),
      child: const subReceipt(),
    );
  }
}

class subReceipt extends StatelessWidget {
  const subReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 25.h,
          ),
          const titleReceipt(),
          SizedBox(
            height: 45.h,
          ),
          SvgPicture.asset(
            "assets/image/receipt.svg",
            width: 101.w,
            height: 100.h,
          ),
          SizedBox(
            height: 29.h,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              SvgPicture.asset(
                "assets/image/receiptCode.svg",
                width: 270.w,
                height: 100.h,
              ),
              Padding(
                padding: EdgeInsets.only(top: 80.h, right: 130.w, left: 120.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "25234567",
                      style: textStyle.subSubTitleStyle,
                    ),
                    const Spacer(),
                    Text(
                      "28646345",
                      style: textStyle.subSubTitleStyle,
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 35.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 44.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name",
                      style: textStyle.subSubTitleStyle,
                    ),
                    const Spacer(),
                    Text(
                      "Scott R. Shoemake",
                      style: textStyle.subSubTitleStyle,
                    )
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email ID",
                      style: textStyle.subSubTitleStyle,
                    ),
                    const Spacer(),
                    Text(
                      "shoemake.redial@gmail.com",
                      style: textStyle.subSubTitleStyle,
                    )
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Course",
                      style: textStyle.subSubTitleStyle,
                    ),
                    const Spacer(),
                    Text(
                      "3d Character Illustration Cre..",
                      style: textStyle.subSubTitleStyle,
                    )
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Category",
                      style: textStyle.subSubTitleStyle,
                    ),
                    const Spacer(),
                    Text(
                      "Web Development",
                      style: textStyle.subSubTitleStyle,
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 44.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "TransactionID",
                      style: textStyle.subSubTitleStyle,
                    ),
                    const Spacer(),
                    Text(
                      "SK345680976",
                      style: textStyle.subSubTitleStyle,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    SvgPicture.asset(
                      "assets/image/copy.svg",
                      width: 13.7.w,
                      height: 16.h,
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Price",
                      style: textStyle.subSubTitleStyle,
                    ),
                    const Spacer(),
                    Text(
                      "\$55.00",
                      style: textStyle.subSubTitleStyle,
                    )
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Date",
                      style: textStyle.subSubTitleStyle,
                    ),
                    const Spacer(),
                    Text(
                      "Nov 20, 202X   /   15:45",
                      style: textStyle.subSubTitleStyle,
                    )
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Status",
                      style: textStyle.subSubTitleStyle,
                    ),
                    const Spacer(),
                    Container(
                      width: 60.w,
                      height: 22.h,
                      decoration:
                          const BoxDecoration(color: colorrs.darkGreenColor),
                      child: Center(
                        child: Text(
                          "Paid",
                          style: textStyle.transactionButtonStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class titleReceipt extends StatelessWidget {
  const titleReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<ReceiptModel>();
    return Padding(
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
            "E-Receipt",
            style: textStyle.titleStyle,
          ),
          const Spacer(),
          PopupMenuButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              icon: SvgPicture.asset(
                "assets/image/dots.svg",
                width: 12.5.w,
                height: 3.h,
              ),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: Row(
                      children: [
                        const Spacer(),
                        Text(
                          "Share",
                          style: textStyle.subMulishStyle,
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        SvgPicture.asset(
                          "assets/image/share.svg",
                          width: 18.w,
                          height: 17.9.h,
                        ),
                        SizedBox(
                          width: 20.w,
                        )
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        const Spacer(),
                        Text(
                          "Download",
                          style: textStyle.subMulishStyle,
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        SvgPicture.asset(
                          "assets/image/download.svg",
                          width: 19.w,
                          height: 20.h,
                        ),
                        SizedBox(
                          width: 20.w,
                        )
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        const Spacer(),
                        Text(
                          "Print",
                          style: textStyle.subMulishStyle,
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        SvgPicture.asset(
                          "assets/image/print.svg",
                          width: 20.w,
                          height: 21.h,
                        ),
                        SizedBox(
                          width: 20.w,
                        )
                      ],
                    ),
                  ),
                ];
              })
        ],
      ),
    );
  }
}
