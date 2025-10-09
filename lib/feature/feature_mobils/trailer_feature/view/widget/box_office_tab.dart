import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../../../../global_entity/data.dart';
import '../../../../../global_entity/series.dart';
import '../../../feature_home_mobile/view/widget/series_card.dart';

class BoxOfficeTab extends StatefulWidget {

  @override
  State<BoxOfficeTab> createState() => _BoxOfficeTabState();
}

class _BoxOfficeTabState extends State<BoxOfficeTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              width: 360.w,
              height: 69.h,
              child: Center(
                child: Text('Now Playing(Box Office)',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 20.sp
                ),),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsetsDirectional.only(bottom: 200.h),
            sliver:SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                SeriesEntity series = featuredSeries[index];
                return AnimationConfiguration.staggeredList(
                  position: index,
                  child: SlideAnimation(
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.fastLinearToSlowEaseIn,
                    child: FlipAnimation(
                      flipAxis: FlipAxis.y,
                      curve: Curves.fastLinearToSlowEaseIn,
                      duration: Duration(milliseconds: 2000),
                      child: SeriesCard(series: series, addTo: false, isVertical: true),
                    ),
                  ),
                );
              }, childCount: featuredSeries.length),
            ),
          ),
        ],
      ),
    );
  }
}
