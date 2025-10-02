import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lancer_resume/global_entity/series.dart';


class LibraryCard extends StatelessWidget {
final SeriesEntity series;
LibraryCard(this.series);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(bottom: 5.h,top: 5.h),
      alignment: Alignment.center,
     decoration: BoxDecoration(
       image: DecorationImage(image: NetworkImage(series.imageUrl1??'',),fit: BoxFit.cover),
     ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.directional(
              bottom: 0,
              end: 0,
              textDirection: TextDirection.ltr,
              child: Container(
                alignment: Alignment.center,
                width: 180.w,
                height: 69.h,color: Colors.black.withAlpha(100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(series.name??'',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 17.sp,overflow: TextOverflow.ellipsis),),
                    Text(series.genre??'',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 15.sp,overflow: TextOverflow.ellipsis),),
                    Text("Seasons: ${series.seasons??''}",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 14.sp,overflow: TextOverflow.ellipsis),),
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }
}
