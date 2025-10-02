import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lancer_resume/feature/feature_home_mobile/controller/home_mobile_controller.dart';
import 'package:lancer_resume/feature/feature_home_mobile/view/widget/series_card.dart';
import 'package:lancer_resume/global_entity/series.dart';

class SeriesList extends StatelessWidget {
  final List<SeriesEntity> list;
  final bool addTo;

  SeriesList({required this.list,this.addTo = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(top: 15.h,start: 15.w),
      width: 360.w,
      height: 345.h,
      child: GetBuilder<HomeControllerMobile>(builder: (logic) {
        return ListView.builder(
          itemCount: list.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            SeriesEntity series = list[index];
            return SeriesCard(item: series,addTo: addTo,);
          },);
      }),
    );
  }
}
