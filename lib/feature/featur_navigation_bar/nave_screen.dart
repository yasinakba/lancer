import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lancer_resume/global_entity/data.dart';


class NavScreen extends StatefulWidget {
   NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
  int selectedIndex = 0;

}

class _NavScreenState extends State<NavScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.black,elevation:0,type: BottomNavigationBarType.fixed,selectedItemColor: Colors.red,unselectedItemColor: Colors.white70,
          items:<BottomNavigationBarItem> [
            BottomNavigationBarItem(icon: Icon(Iconsax.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Iconsax.play_circle),label: "Play List"),
            BottomNavigationBarItem(icon: Icon(Icons.video_library_sharp),label: "Library"),
            BottomNavigationBarItem(icon: Icon(Icons.track_changes),label: "Trailer"),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined),label: "Profile"),
      ],onTap: (int index) {
        setState(() {
          widget.selectedIndex= index;
        });
      },currentIndex: widget.selectedIndex,),
      body: screens.elementAt(widget.selectedIndex),
    );
  }
}
