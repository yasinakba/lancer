import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lancer_resume/feature/feature_series_mobile/view/widget/series_screen_desc.dart';
import 'package:lancer_resume/global_entity/data.dart';

class EpisodeCard extends StatelessWidget {
  final int index;

  EpisodeCard(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: 15.w),
      width: 125.w,
      height: 80.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(newestList[index].imageUrl1 ?? ''),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        width: 120.w,
        height: 80.h,
        color: Colors.black.withAlpha(150),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Episode ${index + 1}",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.w900,
              ),
            ),
            Icon(Iconsax.play5,color: Colors.white,size: 30,),
          ],
        ),
      ),
    );
  }
}
