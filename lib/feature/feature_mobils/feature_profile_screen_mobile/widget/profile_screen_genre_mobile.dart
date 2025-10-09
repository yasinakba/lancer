import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'genre_card.dart';

class ProfileScreenGenreMobile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.symmetric(horizontal: 10.w),
      width: 360.w,
      height: 350.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Favorite Genre",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 18.sp),),
          Wrap(
           alignment: WrapAlignment.center,
            spacing: 10.w,
            runSpacing: 10.h,
            children: [
              GenreCard(title: 'Action', color: Colors.blue),
                GenreCard(title:'Western', color: Colors.red),
              GenreCard(title: 'Adventures', color: Colors.grey),
              GenreCard(title: 'Drama', color: Colors.green),
                GenreCard(title:'Sci_Fi', color: Colors.orange),
            ],
          ),
          Row(
            children: [
              IconButton(onPressed: null, icon: Icon(Icons.add_circle_outline,color: Colors.white,)),
              Text("Add your favorite genres",style: TextStyle(color: Colors.white,fontSize: 18.sp),),
            ],
          ),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 10.w,
            runSpacing: 10.h,
            children: [
              GenreCard(title: 'Crime', color: Colors.white10),
              GenreCard(title:'Comedy', color: Colors.white10),
              GenreCard(title: 'Thriller', color: Colors.white10),
            ],
          ),
        ],
      ),
    );
  }
}
