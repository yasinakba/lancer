import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lancer_resume/feature/feature_desktop/feature_home_desktop/widget/radius_button.dart';

class MainDesktop extends StatefulWidget {
  final String imageURL;
  final String name;
  MainDesktop({required this.imageURL, required this.name});
  @override
  State<MainDesktop> createState() => _MainDesktopState();
}

class _MainDesktopState extends State<MainDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      height: 530.h,
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(widget.imageURL),fit: BoxFit.cover,alignment: Alignment.topCenter),
      ),
      child: Stack(
        children: [
          Container(
            width: 360.h,
            height: 530.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.black,
                Colors.black.withAlpha(150),
                Colors.black.withAlpha(100),
                Colors.transparent,
              ],begin: AlignmentDirectional.centerStart,end: AlignmentDirectional.center),
            ),
          ),
          Positioned.directional(
            textDirection: TextDirection.ltr,
            top: 60.h,
              start: 12.w,
              child: Container(
            width: 130.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14.sp),),
                SizedBox(height: 11.h,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                    Text("2019",style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,fontSize: 8.sp),),
                  Container(
                    height: 40.h,
                    width: 20.w,
                    decoration: BoxDecoration(
                      border:Border.all(color:Colors.white,width: 2),
                      borderRadius: BorderRadiusDirectional.circular(7),
                    ),
                    child: Center(child: Text('17+',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,fontSize: 6.sp),),),
                  ),
                  Text("IMDB 9.1",style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,fontSize: 8.sp),),
                  Text("1 h 56min",style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,fontSize: 8.sp),),
                ],),
                SizedBox(height: 12.h,),
                Text('A lonely young woman, Sintel, helps and befriends a dragon,\nwhom she calls Scales. But when he is kidnapped by an adult\n'
                    'dragon, Sintel decides to embark on a dangerous quest to find\n'
                    'her lost friend Scales.',style: TextStyle(letterSpacing: 1.1,color: Colors.white,fontWeight: FontWeight.w600,),),
                SizedBox(height: 15.h,),
                Container(
                  height: 35.h,
                  width: 72.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RadiusButton(title: 'Play',icon: Icons.play_arrow,color: Colors.red,),
                      RadiusButton(title: 'My List',icon: Icons.add,color: Colors.white,),
                    ],
                  ),
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
