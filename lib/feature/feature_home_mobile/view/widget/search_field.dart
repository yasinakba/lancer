import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.symmetric(vertical: 5.h),
      padding: EdgeInsetsDirectional.symmetric(vertical: 5.h,horizontal: 4.w),
      height: 60.h,
      decoration: BoxDecoration(
      color: Colors.grey[900],
        borderRadius: BorderRadiusDirectional.circular(15),
      ),
      child: SizedBox(
        height: 60.h,
        child: TextField(
          cursorColor: Colors.teal,
          style: TextStyle(color: Colors.white,fontSize: 25),
          decoration: InputDecoration(
            fillColor: Colors.grey[900],
            filled: true,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.white,fontSize: 25),
            hintTextDirection: TextDirection.ltr
          ),
        ),
      ),
    );
  }
}
