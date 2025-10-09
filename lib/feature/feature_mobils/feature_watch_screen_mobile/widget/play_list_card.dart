import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lancer_resume/global_entity/series.dart';

import '../view/watch_screen_mobile.dart';

class PlayListCard extends StatefulWidget {
  final SeriesEntity series;
  final int index;

  PlayListCard({required this.series, required this.index});

  @override
  State<PlayListCard> createState() => _PlayListCardState();
}

class _PlayListCardState extends State<PlayListCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(start: 20.w),
      margin: EdgeInsets.only(bottom: 10.h),
      width: 360.w,
      height: 125.h,
      child: Stack(
        children: [
          Positioned.directional(
              end:0,
              bottom: 0,
              textDirection: TextDirection.ltr,
              child: Container(
                height: 110.h,
                width: 240.w,
                padding: EdgeInsetsDirectional.only(start: 10.w),
                decoration: BoxDecoration(
                color: Color(0xff181818),
                  borderRadius: BorderRadiusDirectional.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("${widget.index+1}.${widget.series.name ?? ''}",overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white,fontSize: 23.sp,fontWeight: FontWeight.bold),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Stack(
                            children: [
                              Container(
                                width: 160.w,
                                height: 3,
                                color: Colors.grey,
                              ),
                              Container(
                                width: 130.w,
                                height: 3,
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ),
                        Text("${widget.series.remainTime??''}m left",style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14.sp
                        ),),
                    ],),
                    GestureDetector(
                      onTap: ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                        return WatchScreenMobile(imageUrl: widget.series.imageUrl2,);
                      },)),
                      child: Container(
                        alignment: Alignment.center,
                        width: 72.w,
                        height: 25.h,
                        color: Colors.red,
                        child: Text('Continue',style: TextStyle(color: Colors.white,),),
                      ),
                    ),
                  ],
                ),
          )),
          Positioned.directional(textDirection:TextDirection.ltr,
          top: 0,
          start: 0,
          child: Container(
            width: 108.w,
            height: 107.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(8),
              image: DecorationImage(image: NetworkImage(widget.series.imageUrl1??''),fit: BoxFit.cover),
            ),
          ),),
        ],
      ),
    );
  }
}
