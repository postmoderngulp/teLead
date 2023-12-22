import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Domain/models/commonModels/payment_model.dart';
import 'package:teelead/Style/colors.dart';
import 'package:teelead/Style/text_style.dart';

class PaymentOption extends StatelessWidget {
  const PaymentOption({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PaymentOptionModel(),
      child: const subPaymentOption(),
    );
  }
}

class subPaymentOption extends StatelessWidget {
  const subPaymentOption({super.key});

  @override
  Widget build(BuildContext context) {
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
              SizedBox(
                height: 25.h,
              ),
              const titlePayment(),
              SizedBox(
                height: 30.h,
              ),
              const paymentList(),
              SizedBox(
                height: 30.h,
              ),
              const adddNewCardButton()
            ],
          ),
        ),
      ),
    ));
  }
}

class adddNewCardButton extends StatelessWidget {
  const adddNewCardButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.read<PaymentOptionModel>();
    return SizedBox(
        width: 350.w,
        height: 60.h,
        child: ElevatedButton(
            onPressed: () => model.goToAddCard(context),
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
            )));
  }
}

class paymentList extends StatelessWidget {
  const paymentList({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<PaymentOptionModel>();
    return ListView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) => Padding(
          padding: EdgeInsets.only(bottom: 20.h),
          child: paymentItem(index: index)),
    );
  }
}

class paymentItem extends StatelessWidget {
  int index;
  paymentItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 3, // changes position of shadow
            ),
          ],
        ),
        width: 360.w,
        height: 60.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 72.w,
            ),
            Text(
              "**** ****  **76  3054",
              style: textStyle.subSubTitleStyle,
            ),
            const Spacer(),
            Text(
              "Connected",
              style: textStyle.greenMulishStyle,
            ),
            SizedBox(
              width: 22.w,
            ),
          ],
        ));
  }
}

class titlePayment extends StatelessWidget {
  const titlePayment({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<PaymentOptionModel>();
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
          "Payment Option",
          style: textStyle.titleStyle,
        ),
      ],
    );
  }
}
