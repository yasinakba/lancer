import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GenreCard extends StatelessWidget {
  final String title;
  final Color color;

  GenreCard({required this.title,required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 100.w,
      height: 50.h,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadiusDirectional.circular(15),
      ),
      child: Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 15.sp,overflow: TextOverflow.ellipsis),maxLines: 2,),
    );
  }
}
