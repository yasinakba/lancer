import 'package:flutter/material.dart';
import 'package:lancer_resume/config/global_widget/responsive.dart';
import 'package:lancer_resume/feature/feature_desktop/feature_home_desktop/view/home_screen_desktop.dart';

import '../feature_mobils/featur_navigation_bar/nave_screen.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: NavScreen(), tablet: NavScreen(), desktop: HomeScreenDesktop());
  }
}
