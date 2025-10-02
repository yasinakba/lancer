import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lancer_resume/feature/feature_home_mobile/controller/home_mobile_controller.dart';
import 'package:get/get.dart';
import 'package:lancer_resume/feature/feature_series_mobile/view/series_screen_mobiles.dart';

import '../../../../global_entity/series.dart';

class SeriesCard extends StatelessWidget {
 final SeriesEntity item;
 final bool addTo;
 final HomeControllerMobile controllerMobile = Get.put(HomeControllerMobile());
 SeriesCard({required this.item,this.addTo = false});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return SeriesScreenMobiles(series: item,);
        },));
      },
      child: Container(
        margin: EdgeInsetsDirectional.only(end: 30.w),
        width: 280.w,
        height: 345.h,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(item.imageUrl1??'',),fit: BoxFit.cover),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              bottom: 0,
              child: Container(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w,vertical: 10.h),
                width: 280.w,
                height: 145.h,
                color: Colors.black.withAlpha(160),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item.name ??'',style:TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 25.spMin,),maxLines: 2,overflow: TextOverflow.ellipsis,),
                    Text("Seasons :${item.seasons}",style:TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 23.spMin,),maxLines: 2,overflow: TextOverflow.ellipsis,),
                    Text(item.genre.toString(),style:TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 23.spMin,),maxLines: 2,overflow: TextOverflow.ellipsis,),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: addTo,
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
