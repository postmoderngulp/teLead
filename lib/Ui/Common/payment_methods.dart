import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Domain/models/commonModels/payment_methods_model.dart';
import 'package:teelead/Style/colors.dart';
import 'package:teelead/Style/text_style.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PaymentMethodsModel(),
      child: const subPaymentMethods(),
    );
  }
}

class subPaymentMethods extends StatelessWidget {
  const subPaymentMethods({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: colorrs.backgroundColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 34.w),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25.h,
                ),
                const titlePaymentMethods(),
                SizedBox(
                  height: 25.h,
                ),
                const Course(),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Select the Payment Methods you Want to Use",
                  style: textStyle.greyMulishStyle,
                ),
                SizedBox(
                  height: 18.h,
                ),
                const listPayMethods(),
                SizedBox(
                  height: 130.h,
                ),
                const addMethodButton(),
                SizedBox(
                  height: 30.h,
                ),
                const enrollButton()
              ]),
        ),
      ),
    ));
  }
}

class addMethodButton extends StatelessWidget {
  const addMethodButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: 62.w,
        height: 62.h,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0.5,
              blurRadius: 4, // changes position of shadow
            ),
          ],
          color: colorrs.mainColor,
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 40.w,
        ),
      ),
    );
  }
}

class enrollButton extends StatelessWidget {
  const enrollButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<PaymentMethodsModel>();
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 26.h),
        child: SizedBox(
            width: 350.w,
            height: 60.h,
            child: ElevatedButton(
                onPressed: () => showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 1,
                          title: Center(
                              child: Padding(
                            padding: EdgeInsets.only(top: 5.h),
                            child: SvgPicture.asset(
                              "assets/image/success.svg",
                              width: 132.w,
                              height: 119.h,
                            ),
                          )),
                          content: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Congratulations",
                                style: textStyle.titleStyle,
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Text(
                                "Your Payment is Successfully. Purchase a New Course",
                                style: textStyle.subSubTitleStyle,
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Text(
                                "Watch the Course",
                                style: textStyle.orangeMulishStyle,
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              const receiptButton(),
                              SizedBox(
                                height: 20.h,
                              ),
                            ],
                          ),
                        )),
                style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll(colorrs.mainColor),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Enroll Course - \$55",
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
                      ),
                    )
                  ],
                ))),
      ),
    );
  }
}

class receiptButton extends StatelessWidget {
  const receiptButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 206.w,
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
                  "E - Receipt",
                  style: textStyle.buttonStyle,
                ),
                Container(
                  width: 48.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
                    child: SvgPicture.asset(
                      "assets/image/arrow_button.svg",
                      width: 21.w,
                      height: 17.h,
                    ),
                  ),
                )
              ],
            )));
  }
}

final List<String> listRadio = ['1', '2', '3'];
String _Value = ' ';

class listPayMethods extends StatefulWidget {
  const listPayMethods({super.key});

  @override
  State<listPayMethods> createState() => _listPayMethodsState();
}

class _listPayMethodsState extends State<listPayMethods> {
  @override
  Widget build(BuildContext context) {
    final model = context.watch<PaymentMethodsModel>();
    return ListView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: listRadio.length,
      itemBuilder: (BuildContext context, int index) => Padding(
          padding: EdgeInsets.only(bottom: 20.h),
          child: Container(
            width: 360.w,
            height: 60.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 3, // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Paypal",
                    style: textStyle.subTitleStyle,
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  SizedBox(
                    width: 26.w,
                    child: RadioListTile(
                      activeColor: colorrs.darkGreenColor,
                      value: listRadio[index],
                      groupValue: _Value,
                      onChanged: (val) {
                        setState(() {
                          _Value = val.toString();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}

class Course extends StatelessWidget {
  const Course({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      height: 134.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 3, // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 21.w, top: 20.h),
            child: Container(
              width: 100.w,
              height: 100.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/imageReview.png"),
                ),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.w,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 47.h,
                ),
                Text(
                  "Graphic Design",
                  style: textStyle.orangeMulishStyle,
                ),
                Text(
                  "Graphic Design",
                  style: textStyle.JostTitleStyle,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class titlePaymentMethods extends StatelessWidget {
  const titlePaymentMethods({super.key});

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
          "Payment Methods",
          style: textStyle.titleStyle,
        ),
      ],
    );
  }
}
