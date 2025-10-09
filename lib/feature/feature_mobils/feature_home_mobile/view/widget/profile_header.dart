import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ProfileHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   return Container(
      height: 60.h,
      width: 360.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              children: [
                TextSpan(
                  text:' Hello ',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                TextSpan(
                  text:'Lavender!',
                  style: TextStyle(
                      color: Colors.white70,
                      wordSpacing: 1.1,
                      fontWeight: FontWeight.w400,
                      fontSize: 28
                  ),
                ),
              ],
            ),
          ),
          Text('  Check for Latest additions',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w400,fontSize: 18),),
        ],
      ),
    );
  }
}
