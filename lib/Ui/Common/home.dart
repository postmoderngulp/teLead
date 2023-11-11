import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Domain/models/commonModels/home_model.dart';
import 'package:teelead/Style/colors.dart';
import 'package:teelead/Style/text_style.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=> homeModel(),child: const SubHome(),);
  }
}


class SubHome extends StatelessWidget {
  const SubHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: colorrs.backgroundColor,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 34.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8.h,),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hi, Ronald A. Martin",style: textStyle.titleStyle,),
                    Text("What Would you like to learn Today?",style: textStyle.subMulishStyle,),
                    Text("Search Below.",style: textStyle.subMulishStyle,),
                  ],
                ),
                SizedBox(width: 70.w,),
                Image.asset("assets/image/notifications.png"),
            ],),
            SizedBox(height: 44.h,),
            const searchTextField(),
            SizedBox(height: 30.h,),
            const bannerSpecial(),
            SizedBox(height: 30.h,),
            Row(children: [
              Text("Categories",style: textStyle.subTitleStyle,),
              const Spacer(),
              Text("SEE ALL",style: textStyle.subTitleMainStyle,),
              SizedBox(width: 5.w,),
              Icon(Icons.arrow_forward_ios_rounded,color: colorrs.mainColor,size: 14.w,)
            ],),
            SizedBox(height: 15.h,),
            const listCategories(),
            SizedBox(height: 40.h,),
            Row(children: [
              Text("Polupar Courses",style: textStyle.subTitleStyle,),
              const Spacer(),
              Text("SEE ALL",style: textStyle.subTitleMainStyle,),
              SizedBox(width: 5.w,),
              Icon(Icons.arrow_forward_ios_rounded,color: colorrs.mainColor,size: 14.w,)
            ],),
            SizedBox(height: 10.h,),
            const listCourses(),
          ],
        ),
      ),
    ));
  }
}


class searchTextField extends StatelessWidget {
  const searchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<homeModel>();
    return Center(
      child: SizedBox(
        width: 360.w,
        height: 60.h,
        child: CupertinoTextField(
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) {},
          padding: EdgeInsets.symmetric(vertical: 22.h),
          prefix: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 22.h),
            child: ImageIcon(
              const AssetImage("assets/image/search.png"),
              size: 19.w,
            ),
          ),
          suffix:  Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 22.h),
            child:  SizedBox(width: 38.w,height: 38.h,child: Image.asset("assets/image/filter.png")),
          ),
          placeholder: "Search for..",
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


class bannerSpecial extends StatelessWidget {
  const bannerSpecial({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 360.w,
      height: 180.h,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/image/offer.png"),
          fit: BoxFit.cover
        )
      ),
    );
  }
}


class listCategories extends StatelessWidget {
  const listCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<homeModel>();
    return SizedBox(height: 20.h,child: ListView.builder(scrollDirection:Axis.horizontal ,shrinkWrap: true,
      itemCount: model.listCategories.length,itemBuilder: (BuildContext context, int index) => index != 1 ?
    GestureDetector(onTap: () => model.setValCategories(index),child: Text(model.listCategories[index],style: model.valCategory == index ? textStyle.activeMulishStyle :textStyle.inActiveMulishStyle,)) :
    GestureDetector(
      onTap: () => model.setValCategories(index),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 22.w),
        child: Text(model.listCategories[index],style : model.valCategory == index ? textStyle.activeMulishStyle: textStyle.inActiveMulishStyle,),
      ),
    ) ,));
  }
}


class listCourses extends StatelessWidget {
  const listCourses({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<homeModel>();
    return  SizedBox(
      height: 30.w,
      child: Expanded(
        child: ListView.builder(scrollDirection:Axis.horizontal ,shrinkWrap: true,
          itemCount: model.listCourses.length,itemBuilder: (BuildContext context, int index) =>
          Padding(
            padding: index != 0 && index!= model.listCourses.length ?  EdgeInsets.symmetric(horizontal: 12.w) : const EdgeInsets.symmetric(horizontal: 0),
            child:  SizedBox(
                child: ElevatedButton(
                    onPressed: () => model.setValCourses(index),
                    style: ButtonStyle(
                      elevation: const MaterialStatePropertyAll(0),
                      backgroundColor: model.valCourses == index ?const MaterialStatePropertyAll( colorrs.darkGreenColor) : const MaterialStatePropertyAll( colorrs.buttonGreyColor),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))
                    ),
                    child: Text(model.listCourses[index],style: model.valCourses == index ? textStyle.activeWhiteMulishStyle: textStyle.inActiveWhiteMulishStyle,),

              ),
            ),
          ) ,),
      ),
    );
  }
}

