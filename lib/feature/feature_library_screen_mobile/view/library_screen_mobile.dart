import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lancer_resume/feature/feature_home_mobile/view/widget/profile_header.dart';
import 'package:lancer_resume/feature/feature_home_mobile/view/widget/rich_text_with_see_all.dart';
import 'package:lancer_resume/feature/feature_home_mobile/view/widget/search_field.dart';
import 'package:lancer_resume/feature/feature_home_mobile/view/widget/series_list.dart';
import 'package:lancer_resume/global_entity/data.dart';

class LibraryScreenMobile extends StatelessWidget {
  // final

   LibraryScreenMobile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            title: Image.asset("assets/image/logo.png", width: 150.w),
          ),
          SliverToBoxAdapter(
            child: Container(
                margin: EdgeInsetsDirectional.only(top: 10.h,start: 15.w,end: 15.w),
                child: SearchField()),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                RichTextWithSeeAll(title1: 'Recommended ',title2: 'For You',),
                SeriesList(list: featuredSeries,addTo: true,),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                RichTextWithSeeAll(title1: 'Popular ',title2: 'Series',),
                SeriesList(list: newestList,addTo: true,),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                RichTextWithSeeAll(title1: 'TopRated ',title2: 'soon',),
                SeriesList(list: myListFilm,addTo: true,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
