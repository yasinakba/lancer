import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lancer_resume/feature/feature_home_mobile/controller/home_mobile_controller.dart';
import 'package:lancer_resume/feature/feature_home_mobile/view/widget/filter.dart';
import 'package:lancer_resume/feature/feature_home_mobile/view/widget/profile_header.dart';
import 'package:lancer_resume/feature/feature_home_mobile/view/widget/rich_text_with_see_all.dart';
import 'package:lancer_resume/feature/feature_home_mobile/view/widget/search_field.dart';
import 'package:lancer_resume/feature/feature_home_mobile/view/widget/series_list.dart';
import 'package:lancer_resume/global_entity/data.dart';

class HomeScreenMobile extends StatelessWidget {
  final HomeControllerMobile controllerMobile = Get.put(HomeControllerMobile());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: Image.asset("assets/image/logo.png", width: 150.w),
      ),
      body: GetBuilder<HomeControllerMobile>(
        builder: (controller) {
          return Container(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w),
            width: 360.w,
            height: 690.h,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ProfileHeader(),
                  SearchField(),
                  Filter(),
                  RichTextWithSeeAll(title1: 'Feature', title2: 'Series',),
                  SeriesList(list: featuredSeries,addTo: true,),
                  RichTextWithSeeAll(title1: 'My', title2: 'List',),
                  SeriesList(list: myListFilm,addTo: false,),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
