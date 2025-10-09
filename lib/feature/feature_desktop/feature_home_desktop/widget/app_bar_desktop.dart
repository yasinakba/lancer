import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lancer_resume/config/image/jpg.dart';
import 'package:lancer_resume/config/image/png.dart';
import 'package:lancer_resume/feature/feature_desktop/feature_home_desktop/controller/home_screen_desktop_controller.dart';
import 'package:lancer_resume/feature/feature_desktop/feature_home_desktop/widget/search_field_desktop.dart';
import 'package:lancer_resume/global_entity/data.dart';

class AppBarDesktop extends StatefulWidget {
  String selectedLanguage = 'Language';
  bool isAlarm = false;

  @override
  State<AppBarDesktop> createState() => _AppBarDesktopState();
}

class _AppBarDesktopState extends State<AppBarDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: 10.w,
        vertical: 10.h,
      ),
      height: 60.h,
      color: Colors.black.withAlpha(150),
      child: Row(
        children: [
          IconButton(onPressed: () {
            Get.lazyPut(() => HomeScreenDesktopController());
            Get.find<HomeScreenDesktopController>().fancyDrawerController!.toggle();
          }, icon: Icon(Icons.menu,color: Colors.white,size: 9.sp,)),
          Image.asset(PNG.logo, width: 36.w, height: 69.h),
          SizedBox(width: 5.w),
          SearchFieldDesktop(),
          Spacer(),
          Container(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 5.w),
            margin: EdgeInsetsDirectional.symmetric(horizontal: 5.w),
            width: 27.w,
            height: 60.h,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                alignment: AlignmentDirectional.centerStart,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
                hint: const Text(
                  'language',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                dropdownColor: Colors.black,
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                ),

                items: languages.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    widget.selectedLanguage = value!;
                  });
                },
                value: languages.contains(widget.selectedLanguage)
                    ? widget.selectedLanguage
                    : null,
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                widget.isAlarm = !widget.isAlarm;
              });
            },
            icon: Icon(
              widget.isAlarm == true ? MdiIcons.bellOutline : MdiIcons.bellRing,
              color: Colors.red,
            ),
          ),
          Container(
            height: 12.w,
            width: 12.w,
            margin: EdgeInsetsDirectional.symmetric(horizontal: 5.w),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(JPG.myAvatar),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
