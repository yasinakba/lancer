import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterCard extends StatelessWidget {
  final IconData icon;
  final String title;

  FilterCard({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsetsDirectional.all(10),
          padding: EdgeInsetsDirectional.all(10),
          width: 60.w,
          height: 60.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(15),
            color: Colors.grey,
          ),
          child:Center(child: Icon(icon,color: Colors.white,size: 40,)),
        ),
        Text(title,style: TextStyle(color: Colors.white,fontSize: 20),),
      ],
    );
  }
}
