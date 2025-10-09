import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lancer_resume/config/image/png.dart';
import 'package:lancer_resume/feature/feature_mobils/trailer_feature/view/widget/box_office_tab.dart';
import 'package:lancer_resume/feature/feature_mobils/trailer_feature/view/widget/trailer_tab.dart';

class TrailerScreenMobile extends StatefulWidget {
  @override
  State<TrailerScreenMobile> createState() => _TrailerScreenMobileState();
}

class _TrailerScreenMobileState extends State<TrailerScreenMobile> with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this,initialIndex: 0);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: 360.w,
        height: 690.h,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.black,
              centerTitle: true,
              title: Image.asset(PNG.logo, width: 150.w),
            ),
             SliverToBoxAdapter(
               child: TabBar(
                 dividerColor: Colors.transparent,
                 controller:tabController,
                 tabs: [
                 Container(
                     width: 180.w,
                     alignment: Alignment.center,
                     child: Text('Trailer',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20.sp),)),
                 Container(
                     width: 180.w,
                     alignment: Alignment.center,
                     child: Text('BoxOffice',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20.sp),)),
               ],indicatorColor: Colors.red,labelColor: Colors.red,unselectedLabelColor: Colors.white38,),
             ),
            SliverToBoxAdapter(
              child: Container(
                width: 360.w,
                 height: 690.h,
                 child: TabBarView(
                   controller: tabController,
                   children: [
                     TrailerTab(),
                     BoxOfficeTab(),
                 ],),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
