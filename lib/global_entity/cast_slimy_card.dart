import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lancer_resume/global_entity/data.dart';
import 'package:slimy_card_plus/slimy_card.dart';

class CastSlimyCard extends StatefulWidget {

  @override
  State<CastSlimyCard> createState() => _CastSlimyCardState();
}

class _CastSlimyCardState extends State<CastSlimyCard> {
  @override
  Widget build(BuildContext context) {
    return SlimyCard(
        width: 36.w,
        slimeEnabled: false,
        color: Colors.transparent,
        bottomCardHeight: 400.h,
        topCardHeight: 120.h,
        topCardWidget: Container(), bottomCardWidget: Container(
        width: 36.w,
        child: ListView.builder(
          itemCount: castList.length,
          itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsetsDirectional.symmetric(vertical: 10),
            width: 15.w,
            height: 15.w,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red,width: 2),
              shape: BoxShape.circle,
              image:DecorationImage(image: NetworkImage(castList[index]),fit: BoxFit.fitHeight),
            ),
          );
        },),
    ),
    );
  }
}
