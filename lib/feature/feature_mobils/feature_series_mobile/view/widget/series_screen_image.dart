import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lancer_resume/feature/feature_mobils/feature_series_mobile/view/widget/series_screen_button.dart';
import 'package:lancer_resume/global_entity/series.dart';
import 'package:get/get.dart';

import 'custom_divider.dart';

class SeriesScreenImage extends StatefulWidget {
  final SeriesEntity series;

  SeriesScreenImage({required this.series});
  bool isFavorite = false;

  @override
  State<SeriesScreenImage> createState() => _SeriesScreenImageState();
}

class _SeriesScreenImageState extends State<SeriesScreenImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      height: 450.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(widget.series.imageUrl1 ?? ''),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Container(
            width: 360.w,
            height: 450.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.transparent,
                  Colors.transparent,
                  Colors.black.withAlpha(70),
                  Colors.black.withAlpha(100),
                  Colors.black,
                  Colors.black,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: 360.w,
              height: 144.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 72.w,
                    height: 72.w,
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    child: IconButton(
                      onPressed: null,
                      icon: Icon(
                        Iconsax.play5,
                        size: 40.w,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    widget.series.name ?? '',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 20.sp,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Padding(
                    padding:  EdgeInsets.only(bottom: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          widget.series.year.toString(),
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 18.sp,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        CustomDivider(),
                        Text(
                          widget.series.genre.toString(),
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 18.sp,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        CustomDivider(),
                        Text(
                          "Seasons ${widget.series.seasons}",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 18.sp,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 15.h,
            child: Container(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 20.w),
              width: 360.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SeriesScreenButton(icon: Icons.arrow_back, function: ()=>Get.back(),),SeriesScreenButton(icon:widget.isFavorite == true?Iconsax.heart5:Iconsax.heart4, function: (){
                    setState(() {
                    widget.isFavorite = !widget.isFavorite;
                    });
                  },),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
