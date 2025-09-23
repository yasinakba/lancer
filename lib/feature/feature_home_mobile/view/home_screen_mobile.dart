import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lancer_resume/feature/feature_home_mobile/controller/home_mobile_controller.dart';
import 'package:lancer_resume/feature/feature_home_mobile/view/widget/filter.dart';
import 'package:lancer_resume/feature/feature_home_mobile/view/widget/profile_header.dart';
import 'package:lancer_resume/feature/feature_home_mobile/view/widget/search_field.dart';

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ProfileHeader(),
                SearchField(),
                Filter(),
              ],
            ),
          );
        },
      ),
    );
  }
}
