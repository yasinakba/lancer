import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lancer_resume/feature/feature_home_mobile/view/widget/profile_header.dart';
import 'package:lancer_resume/feature/feature_profile_screen_mobile/widget/profile_image_screen_mobile.dart';

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
            )
          ],
        ),
      ),
    );
  }
}
