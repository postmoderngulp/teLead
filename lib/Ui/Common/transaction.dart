import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Domain/models/commonModels/transactionModel.dart';
import 'package:teelead/Style/colors.dart';
import 'package:teelead/Style/text_style.dart';

class Transaction extends StatelessWidget {
  const Transaction({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => transactionModel(),
      child: const subTransaction(),
    );
  }
}

class subTransaction extends StatelessWidget {
  const subTransaction({super.key});

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
              const titleTransaction(),
              SizedBox(
                height: 30.h,
              ),
              const listTransaction()
            ],
          ),
        ),
      ),
    ));
  }
}

class listTransaction extends StatelessWidget {
  const listTransaction({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<transactionModel>();
    return ListView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: 13,
      itemBuilder: (BuildContext context, int index) => GestureDetector(
        onTap: () => model.goToReceipt(context),
        child: Padding(
          padding: EdgeInsets.only(bottom: 20.h),
          child: listTransactionItem(
            index: index,
          ),
        ),
      ),
    );
  }
}

class listTransactionItem extends StatelessWidget {
  int index;
  listTransactionItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260.w,
      height: 118.h,
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 92.w,
            height: 92.h,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/imageReview.png"),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 14.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Build Personal Branding",
                style: textStyle.subTitleStyle,
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Web Designer",
                style: textStyle.subSubTitleStyle,
              ),
              SizedBox(
                height: 17.h,
              ),
              SizedBox(
                  width: 65.w,
                  height: 22.h,
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          elevation: MaterialStatePropertyAll(0),
                          backgroundColor:
                              MaterialStatePropertyAll(colorrs.darkGreenColor)),
                      onPressed: () {},
                      child: Text(
                        "Paid",
                        style: textStyle.transactionButtonStyle,
                      ))),
            ],
          ),
        ],
      ),
    );
  }
}

class titleTransaction extends StatelessWidget {
  const titleTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<transactionModel>();
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
          "Transactions",
          style: textStyle.titleStyle,
        ),
        const Spacer(),
        GestureDetector(
          child: SvgPicture.asset(
            "assets/image/search.svg",
            width: 20.w,
            height: 20.h,
          ),
          onTap: () => {},
        ),
      ],
    );
  }
}
