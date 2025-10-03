import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ProfileImageScreenMobile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      height: 300.h,
      color: Colors.red,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(child: Container(
            width: 360.w,
            height: 300.h,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/flutter_banner.jpg')),
            ),
          )),
        ],
      ),
    );
  }
}
