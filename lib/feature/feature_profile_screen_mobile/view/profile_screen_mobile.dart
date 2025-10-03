import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:frino_icons/frino_icons.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lancer_resume/feature/feature_home_mobile/view/widget/profile_header.dart';
import 'package:lancer_resume/feature/feature_profile_screen_mobile/widget/profile_image_screen_mobile.dart';
import 'package:lancer_resume/feature/feature_profile_screen_mobile/widget/profile_screen_genre_mobile.dart';

class ProfileScreenMobile extends StatelessWidget {
  const ProfileScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: 360.w,
        height: 690.h,
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: ProfileImageScreenMobile(),
            ),
            SliverToBoxAdapter(
              child: Container(
                alignment: Alignment.center,
                width: 360.w,
                height: 150.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("YasinDeve",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold,color: Colors.white),),
                        IconButton(onPressed: null, icon: Icon(Iconsax.edit5,color: Colors.red,))
                      ],
                    ),
                    RichText(text: TextSpan(children: [
                      TextSpan(text: 'Gmail: ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18.sp)),
                      TextSpan(text: 'MyEmail',style: TextStyle(color: Colors.red,fontWeight: FontWeight.w900,fontSize: 18.sp))
                    ])),
                    SizedBox(height: 5.h,),
                    RichText(text: TextSpan(children: [
                      TextSpan(text: 'Mobile: ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18.sp)),
                      TextSpan(text: 'MY MOBILE PHONE'.toLowerCase(),style: TextStyle(color: Colors.red,fontWeight: FontWeight.w500,fontSize: 18.sp))
                    ])),
                    Padding(
                      padding:  EdgeInsets.only(top: 12.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 108.w,
                            height: 34.h,
                            color: Colors.red,
                            child: Center(child: Text('Edit',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
                          ),
                          Container(
                            width: 108.w,
                            height: 34.h,
                            color: Colors.white,
                            child: Center(child: Text('Log Out',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: ProfileScreenGenreMobile(),
            )
          ],
        ),
      ),
    );
  }
}
