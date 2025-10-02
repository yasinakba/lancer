import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lancer_resume/feature/feature_home_mobile/view/widget/series_list.dart';
import 'package:lancer_resume/feature/feature_see_all_mobile/view/see_all_screen_mobile.dart';


class RichTextWithSeeAll extends StatelessWidget {
  final String title1;
  final String title2;
  RichTextWithSeeAll({required this.title1, required this.title2});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(top: 10.h,start: 10.w),
      child: Row(
        children: [
          RichText(text: TextSpan(children: [
            TextSpan(text: "${title1} ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 25)),
            TextSpan(text: title2,style: TextStyle(color: Colors.red,fontWeight: FontWeight.w500,fontSize: 25)),
          ],),),
          Spacer(),
          RichText(text: TextSpan(children: [
            TextSpan(text: "see ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 25)),
            TextSpan(text: 'all',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w300,fontSize: 25)),
          ],),),
          IconButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SeeAllScreenMobile(title1: title1, title2: title2,),)), icon: Icon(Icons.arrow_forward_ios,color: Colors.white,)),
        ],
      ),
    );
  }
}
