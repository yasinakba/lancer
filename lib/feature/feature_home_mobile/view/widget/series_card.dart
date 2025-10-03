import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lancer_resume/feature/feature_home_mobile/controller/home_mobile_controller.dart';
import 'package:get/get.dart';
import 'package:lancer_resume/feature/feature_series_mobile/view/series_screen_mobiles.dart';

import '../../../../global_entity/series.dart';

class SeriesCard extends StatefulWidget {
 final SeriesEntity item;
 final bool addTo;
 final bool isVertical;

 SeriesCard({required this.item,this.addTo = false,this.isVertical=false});

  @override
  State<SeriesCard> createState() => _SeriesCardState();
}

class _SeriesCardState extends State<SeriesCard> {
 final HomeControllerMobile controllerMobile = Get.put(HomeControllerMobile());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return SeriesScreenMobiles(series: widget.item,);
        },));
      },
      child: Container(
        margin: EdgeInsetsDirectional.only(end:widget.isVertical==true?0:30.w),
        width: 280.w,
        height:widget.isVertical? 230.h:245.h,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(widget.isVertical?widget.item.imageUrl2??'':widget.item.imageUrl1??'',),fit: BoxFit.fill),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              bottom: 0,
              child: Container(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w,vertical: 10.h),
                width:widget.isVertical? 360.w:280.w,
                height:widget.isVertical? 100.h:145.h,
                color: Colors.black.withAlpha(160),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.item.name ??'',style:TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 25.spMin,),maxLines: 2,overflow: TextOverflow.ellipsis,),
                    Text("Seasons :${widget.item.seasons}",style:TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 23.spMin,),maxLines: 2,overflow: TextOverflow.ellipsis,),
                    Text(widget.item.genre.toString(),style:TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 23.spMin,),maxLines: 2,overflow: TextOverflow.ellipsis,),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: widget.addTo,
              child: Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 50.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: Colors.red,
                    ),
                    child: Center(
                      child: Text('Add'.toUpperCase(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 22.spMin),),
                    ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
