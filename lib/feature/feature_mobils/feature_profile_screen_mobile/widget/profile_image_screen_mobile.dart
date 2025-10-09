import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lancer_resume/config/image/jpg.dart';


class ProfileImageScreenMobile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      height: 250.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
              top: 0,
              child: Container(
            width: 360.w,
            height: 180.h,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(JPG.flutterBanner),fit: BoxFit.fitWidth,alignment: Alignment.center),
            ),
          )),
          Container(
            width: 138.w,
            height: 140.w,
            child: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 140.w,
                  height: 140.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(JPG.myAvatar)),
                    border:Border.all(color: Colors.pink,width: 2),
                  ),
                ),
                Container(
                  width: 35.w,
                  height: 35.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: IconButton(onPressed: null, icon: Icon(Icons.camera_alt,color: Colors.black,)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
