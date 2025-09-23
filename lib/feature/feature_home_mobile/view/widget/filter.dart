import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Filter extends StatelessWidget {
  const Filter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      height: 100.h,
      color: Colors.deepOrange,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Filters', style: TextStyle(color: Colors.white, fontSize: 26,fontWeight: FontWeight.w800)),

        ],
      ),
    );
  }
}
