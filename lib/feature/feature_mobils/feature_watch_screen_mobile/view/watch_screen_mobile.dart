import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:lancer_resume/global_entity/data.dart';
import 'package:lancer_resume/global_entity/series.dart';

import '../../featur_navigation_bar/nave_screen.dart';
import '../widget/play_list_card.dart';

class WatchScreenMobile extends StatefulWidget {
  String? imageUrl;
  WatchScreenMobile({this.imageUrl});

  @override
  State<WatchScreenMobile> createState() => _WatchScreenMobileState();
}

class _WatchScreenMobileState extends State<WatchScreenMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
    body: Container(
      width: 360.w,
      height: 690.h,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
          child: Container(
            width: 360.w,
            height: 250.h,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(widget.imageUrl??'https://i.postimg.cc/FHx7Mwfx/breaking-bad2.jpg'),fit: BoxFit.cover),
            ),
            child: Stack(
              children: [
                Center(
                  child: Container(
                    width: 100.w,
                    height: 100.w,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white.withAlpha(120)),
                    child: Icon(Icons.play_arrow,color: Colors.white,size: 60,),
                  ),
                ),
                Positioned(
                  top: 5.h,
                    left: 6.w,
                    child: IconButton(onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) {
                        return NavScreen();
                      },) );
                    }, icon: Icon(Icons.arrow_back_ios_rounded,color: Colors.white,size: 40,))),
              ],
            ),
                    ),
          ),
        SliverToBoxAdapter(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
              child: Text('Recently Watch',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.sp),)),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            SeriesEntity  series = featuredSeries[index];
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: Duration(milliseconds: 1000),
              child: SlideAnimation(
                duration: Duration(milliseconds: 1000),
                curve: Curves.fastLinearToSlowEaseIn,
                child: FlipAnimation(
                  curve: Curves.fastLinearToSlowEaseIn,
                  flipAxis: FlipAxis.y,
                    duration: Duration(milliseconds: 2000),
                    child: PlayListCard(index: index,series: series,)),
              ),
            );
            },
            childCount: featuredSeries.length,
          ),
        )],
      ),
    ),
    );
  }
}
