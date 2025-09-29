import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SeriesScreenButton extends StatefulWidget {
  const SeriesScreenButton({super.key, required this.icon, required this.function});
  final IconData icon;
  final VoidCallback function;

  @override
  State<SeriesScreenButton> createState() => _SeriesScreenButtonState();
}

class _SeriesScreenButtonState extends State<SeriesScreenButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.w,
      height: 50.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(15),
        color: Colors.transparent.withAlpha(70),
      ),
      child: IconButton(onPressed:() {
        widget.function();
      }, icon: Icon(widget.icon,color: Colors.white,size: 30,)),
    );
  }
}
