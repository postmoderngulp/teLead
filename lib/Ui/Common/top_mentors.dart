import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Style/colors.dart';
import 'package:teelead/Style/text_style.dart';

import '../../Domain/models/commonModels/top_mentors.dart';

class topMentors extends StatelessWidget {
  const topMentors({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => topMentorsModel(),
      child: const subTopMentors(),
    );
  }
}

class subTopMentors extends StatelessWidget {
  const subTopMentors({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: colorrs.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 34.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.w,
              ),
              const titleMentors(),
              SizedBox(
                height: 43.h,
              ),
              const listMentors(),
            ],
          ),
        ),
      ),
    ));
  }
}

class titleMentors extends StatelessWidget {
  const titleMentors({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<topMentorsModel>();
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
          "Top Mentors",
          style: textStyle.titleStyle,
        ),
        const Spacer(),
        GestureDetector(
          child: SvgPicture.asset(
            "assets/image/search.svg",
            width: 20.w,
            height: 20.h,
          ),
          onTap: () => model.goToSearchMentors(context),
        ),
      ],
    );
  }
}

class listMentors extends StatelessWidget {
  const listMentors({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<topMentorsModel>();
    return ListView.separated(
      physics: const ClampingScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) => Padding(
          padding: EdgeInsets.only(bottom: 20.h),
          child: listMentorsItem(
            index: index,
          )),
      separatorBuilder: (BuildContext context, int index) => const Divider(
        color: colorrs.greyColor,
      ),
    );
  }
}

class listMentorsItem extends StatelessWidget {
  int index;
  listMentorsItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        "assets/image/noMentorAvatar.svg",
        width: 66.w,
        height: 66.h,
      ),
      title: Text(
        "Jensen",
        style: textStyle.subTitleStyle,
      ),
      subtitle: Text(
        "3D Design",
        style: textStyle.subMulishStyle,
      ),
    );
  }
}
