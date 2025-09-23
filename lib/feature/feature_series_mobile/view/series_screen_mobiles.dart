import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lancer_resume/feature/feature_series_mobile/controller/series_mobile_controller.dart';

class SeriesScreenMobiles extends StatelessWidget {
  final SeriesMobileController controller = Get.put(SeriesMobileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

            ],
          ),
        ),
      ),
    );
  }
}
