import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:lancer_resume/feature/feature_home_mobile/view/widget/search_field.dart';
import 'package:lancer_resume/feature/feature_see_all_mobile/widget/library_card.dart';
import 'package:lancer_resume/global_entity/data.dart';
import 'package:lancer_resume/global_entity/series.dart';

class SeeAllScreenMobile extends StatefulWidget {
 final String title1;
 final String title2;
  SeeAllScreenMobile({ required this.title1, required this.title2,});
  @override
  State<SeeAllScreenMobile> createState() => _SeeAllScreenMobileState();
}

class _SeeAllScreenMobileState extends State<SeeAllScreenMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 20.w),
        width: 360.w,
        height: 690.h,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.black,
              centerTitle: true,
              title: Image.asset("assets/image/logo.png", width: 150.w),
            ),
            SliverToBoxAdapter(
              child: Container(
                  margin: EdgeInsetsDirectional.symmetric(vertical: 10.h),
                  child: SearchField()),
            ),
            SliverToBoxAdapter(
              child: Container(
                child: RichText(text: TextSpan(children: [
                  TextSpan(text:"${widget.title1} ",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20.sp)),
                  TextSpan(text:widget.title2,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 19.sp)),
                ])),
              ),
            ),
            SliverGrid(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10.h,crossAxisSpacing: 10.w),
              delegate: SliverChildBuilderDelegate((context, index) {
                SeriesEntity series = newestList[index];
                return AnimationConfiguration.staggeredList(duration:Duration(milliseconds: 700),position: index, child: ScaleAnimation(duration: Duration(milliseconds: 900),curve: Curves.fastLinearToSlowEaseIn,child:FadeInAnimation(child: LibraryCard(series)),));
               },childCount: newestList.length),
            ),
          ],
        ),
      ),
    );
  }
}

