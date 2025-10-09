import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:lancer_resume/global_entity/data.dart';
import 'package:lancer_resume/global_entity/series.dart';

import '../../../feature_home_mobile/view/widget/series_card.dart';

class TrailerTab extends StatefulWidget {
  @override
  State<TrailerTab> createState() => _TrailerTabState();
}

class _TrailerTabState extends State<TrailerTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      height: 690.h,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              width: 360.w,
              height: 69.h,
              child: Center(
                child: Text(
                  "Lastest Trailer",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsetsDirectional.only(bottom: 200.h),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                SeriesEntity series = myListFilm[index];
                return AnimationConfiguration.staggeredList(
                  position: index,
                  duration: Duration(milliseconds: 1000),
                  child: SlideAnimation(
                    curve: Curves.fastLinearToSlowEaseIn,
                    duration: Duration(milliseconds: 1000),
                    child: FlipAnimation(
                      duration: Duration(milliseconds: 2000),
                      curve: Curves.fastLinearToSlowEaseIn,
                      flipAxis: FlipAxis.y,
                      child: SeriesCard(
                        series: series,
                        addTo: false,
                        isVertical: true,
                      ),
                    ),
                  ),
                );
              }, childCount: myListFilm.length),
            ),
          ),
        ],
      ),
    );
  }
}
