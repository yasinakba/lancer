import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchFieldDesktop extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 5.w,vertical: 5.h),
      width: 65.w,
      height: 80.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white),
      ),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          prefixIcon: Icon(Icons.search,color: Colors.white,),
          suffixIcon: Icon(MdiIcons.filterMenu,color: Colors.white,size: 5.sp,),
          fillColor: Colors.black,
          hintText: "I'm searching for...",
          hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}
