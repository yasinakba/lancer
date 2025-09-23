import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lancer_resume/feature/feature_home_mobile/view/widget/filter_card.dart';

class Filter extends StatelessWidget {
  const Filter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(start: 10.w,top: 5.h),
            child: Text('Filters', style: TextStyle(color: Colors.white, fontSize: 26,fontWeight: FontWeight.w800)),
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              FilterCard(icon:Icons.dashboard, title: 'Genre',),
              FilterCard(icon:Icons.star, title: 'Top IMDB',),
              FilterCard(icon:Icons.language, title: 'Language',),
              FilterCard(icon:Icons.gamepad, title: 'Watched',),
            ],
          )
        ],
      ),
    );
  }
}
