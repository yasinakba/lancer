import 'package:fancy_drawer/fancy_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lancer_resume/feature/feature_desktop/feature_home_desktop/controller/home_screen_desktop_controller.dart';
import 'package:lancer_resume/feature/feature_desktop/feature_home_desktop/widget/app_bar_desktop.dart';
import 'package:lancer_resume/global_entity/data.dart';

import '../../../../global_entity/cast_slimy_card.dart';
import '../../../feature_mobils/feature_home_mobile/view/widget/rich_text_with_see_all.dart';
import '../../../feature_mobils/feature_home_mobile/view/widget/series_list.dart';
import '../widget/main_desktop.dart';
import 'package:get/get.dart';


class HomeScreenDesktop extends StatelessWidget {
  final HomeScreenDesktopController controller = Get.put(
      HomeScreenDesktopController(),permanent: true);
  final String imageURL;
  final String name;

  HomeScreenDesktop({this.imageURL = 'https://i.postimg.cc/XJFXngnV/squid-game2.png', this.name = ''});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenDesktopController>(builder: (logic) {
      return FancyDrawerWrapper(
        backgroundColor: Colors.black,
        drawerPadding: EdgeInsets.symmetric(horizontal: 5.w),
        hideOnContentTap: true,
        drawerItems: [
          Text('Home',style: TextStyle(color: Colors.white,fontSize: 5.sp,decoration: TextDecoration.none),),
        ],
        controller: controller.fancyDrawerController!,
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Container(
            width: 360.w,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Container(
                      child: Stack(
                        children: [
                          MainDesktop(imageURL: imageURL, name: name,),
                          Positioned.directional(
                              top: 0,
                              start: 0,
                              end: 0,
                              textDirection: TextDirection.ltr,
                              child: AppBarDesktop()),
                          Positioned.directional(
                            textDirection: TextDirection.ltr,
                            top: -30.h,
                            end: 20.w,
                            child: CastSlimyCard(),
                          ),
                        ],
                      )),
                ),
                SliverToBoxAdapter(
                  child: RichTextWithSeeAll(
                    title1: 'Feature', title2: 'Series',),
                ),
                SliverToBoxAdapter(
                  child: SeriesList(list: newestList, addTo: true,),
                ),
                SliverToBoxAdapter(
                  child: RichTextWithSeeAll(title1: 'My', title2: 'List',),
                ),
                SliverToBoxAdapter(
                  child: SeriesList(list: myListFilm, addTo: false,),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
