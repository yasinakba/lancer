import 'package:fancy_drawer/fancy_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeScreenDesktopController extends GetxController with GetSingleTickerProviderStateMixin{
FancyDrawerController? fancyDrawerController;
@override
  void onInit() {
    super.onInit();
    fancyDrawerController = FancyDrawerController(vsync: this,duration: Duration(milliseconds: 250))..addListener(() {
      update();
    },); 
  }

  @override
  void dispose(){
   super.dispose();
   fancyDrawerController!.dispose();
  }

}