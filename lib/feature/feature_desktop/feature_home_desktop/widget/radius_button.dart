import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RadiusButton extends StatefulWidget {
 final String title;
 final IconData icon;
 final Color color;
 RadiusButton({required this.title, required this.icon, required this.color});
  @override
  State<RadiusButton> createState() => _RaduState();
  bool isHover = false;
}

class _RaduState extends State<RadiusButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

      },
      onHover: (value) {
        setState(() {
          widget.isHover = value;
        });
      },
      child:widget.isHover == true? Container(
        width: 30.w,
        height: 33.h,
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadiusDirectional.circular(10),
          border: Border.all(color: Colors.white,width: 2),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(widget.icon,size: 30,color: widget.color,),
            Text(widget.title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
          ],
        ),
      ):Container(
        width: 29.w,
        height: 31.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(10),
          border: Border.all(color: Colors.white,width: 2),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(widget.icon,size: 30,color: widget.color,),
            Text(widget.title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
          ],
        ),
      ),
    );
  }
}
