import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Domain/models/commonModels/certificate_model.dart';
import 'package:teelead/Style/colors.dart';
import 'package:teelead/Style/text_style.dart';

class Certificate extends StatelessWidget {
  const Certificate({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CertificateModel(),
      child: const SubCertificate(),
    );
  }
}

class SubCertificate extends StatelessWidget {
  const SubCertificate({super.key});

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
              height: 25.h,
            ),
            const titleCertificate(),
            SizedBox(
              height: 16.h,
            ),
            const searchTextField(),
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: SvgPicture.asset(
                "assets/image/cert.svg",
                width: 360.w,
                height: 560.h,
              ),
            ),
            SizedBox(
              height: 54.h,
            ),
            const DownloadCertificateButton(),
            SizedBox(
              height: 53.h,
            ),
          ],
        ),
      ),
    ));
  }
}

class titleCertificate extends StatelessWidget {
  const titleCertificate({super.key});

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
          "3D Design Illustration",
          style: textStyle.titleStyle,
        ),
      ],
    );
  }
}

class searchTextField extends StatelessWidget {
  const searchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CertificateModel>();
    return Center(
      child: SizedBox(
        width: 360.w,
        height: 60.h,
        child: CupertinoTextField(
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) {},
          padding: EdgeInsets.only(top: 22.h, left: 20.w, bottom: 22.h),
          suffix: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 22.h),
            child: SizedBox(
              width: 38.w,
              height: 38.h,
              child: SvgPicture.asset(
                "assets/image/searchFilter.svg",
                width: 38.w,
                height: 38.h,
              ),
            ),
          ),
          placeholder: "3D Design Illustration",
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

class DownloadCertificateButton extends StatelessWidget {
  const DownloadCertificateButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CertificateModel>();
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 26.h),
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
                      "Download Certificate",
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
