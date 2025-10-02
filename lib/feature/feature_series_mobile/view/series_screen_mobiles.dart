import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lancer_resume/feature/feature_home_mobile/view/widget/rich_text_with_see_all.dart';
import 'package:lancer_resume/feature/feature_series_mobile/controller/series_mobile_controller.dart';
import 'package:lancer_resume/feature/feature_series_mobile/view/widget/episode_card.dart';
import 'package:lancer_resume/feature/feature_series_mobile/view/widget/series_screen_desc.dart';
import 'package:lancer_resume/feature/feature_series_mobile/view/widget/series_screen_image.dart';
import 'package:lancer_resume/global_entity/data.dart';

import '../../../global_entity/series.dart';

class SeriesScreenMobiles extends StatelessWidget {
  final SeriesEntity series;
  SeriesScreenMobiles({required this.series});
  final SeriesMobileController controller = Get.put(SeriesMobileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [SeriesScreenImage(series: series,),Container(
              width: 360.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichTextWithSeeAll(title1: "Episode", title2: 'Series'),
                  Container(
                    height: 160.h,
                    child: ScrollConfiguration(
                      behavior: ScrollBehavior(),
                      child: ListView.builder(
                        itemCount: newestList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                        return EpisodeCard(index,);
                      },),
                    ),
                  ),
                  SizedBox(height: 20.h,),
                  SeriesScreenDesc(series),
                ],
              ),
            )],
          ),
        ),
      ),
    );
  }
}
