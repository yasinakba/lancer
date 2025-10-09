import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lancer_resume/global_entity/series.dart';

class SeriesScreenDesc extends StatelessWidget {
   final SeriesEntity series;
   SeriesScreenDesc(this.series);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      height: 200.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Pilot',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 20.sp),),
          SizedBox(height: 10.h,),
          Text(series.description ?? '',style: TextStyle(color: Colors.white,fontSize: 18.sp),),
        ],
      ),
    );
  }
}
