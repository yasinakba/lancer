import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lancer_resume/config/global_widget/responsive.dart';
import 'package:lancer_resume/feature/feature_desktop/feature_home_desktop/view/home_screen_desktop.dart';
import 'package:lancer_resume/feature/feature_desktop/feature_home_desktop/widget/series_screen_desktop.dart';

import '../../../../../global_entity/series.dart';
import '../../../feature_series_mobile/view/series_screen_mobiles.dart';
import '../../controller/home_mobile_controller.dart';

class SeriesCard extends StatefulWidget {
  final SeriesEntity series;
  final bool addTo;
  final bool isVertical;

  const SeriesCard({
    required this.series,
    this.addTo = false,
    this.isVertical = false,
    Key? key,
  }) : super(key: key);

  @override
  State<SeriesCard> createState() => _SeriesCardState();
}

class _SeriesCardState extends State<SeriesCard> {
  late final HomeControllerMobile controllerMobile;

  @override
  void initState() {
    super.initState();
    controllerMobile = Get.put(HomeControllerMobile(), permanent: true);
  }

  @override
  Widget build(BuildContext context) {
    final bool isMobile = Responsive.isMobile(context);

    final imageUrl = widget.isVertical
        ? (widget.series.imageUrl2?.isNotEmpty == true
        ? widget.series.imageUrl2!
        : 'https://via.placeholder.com/300')
        : (widget.series.imageUrl1?.isNotEmpty == true
        ? widget.series.imageUrl1!
        : 'https://via.placeholder.com/300');

    return GestureDetector(
      onTap: () {
        if (isMobile) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => SeriesScreenMobiles(series: widget.series),
            ),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (_) => HomeScreenDesktop(
                imageURL: widget.series.imageUrl2 ?? '',
                name: widget.series.name ?? '',
              ),
            ),
          );
        }
      },
      child: Container(
        margin: EdgeInsetsDirectional.only(
          end: isMobile
              ? (widget.isVertical ? 0 : 30.w)
              : (widget.isVertical ? 0 : 7.w),
        ),
        width: isMobile ? 280.w : 50.w,
        height: isMobile ? widget.isVertical ? 230.h : 245.h:widget.isVertical?120.h:140.h,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.fill),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              bottom: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                width: widget.isVertical ? 360.w : 50.w,
                height: widget.isVertical ? 100.h : 100.h,
                color: Colors.black.withAlpha(160),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.series.name ?? '',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: isMobile ? 25.spMin : 25,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      "Seasons: ${widget.series.seasons}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23.spMin,
                      ),
                    ),
                    Text(
                      widget.series.genre.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23.spMin,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (widget.addTo)
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: isMobile ? 50.w : 20.w,
                  height: isMobile ? 50.h : 30.h,
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      'ADD',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: isMobile ? 22.spMin : 15.spMin,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
