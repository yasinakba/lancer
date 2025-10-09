import 'package:flutter/material.dart';

class SeriesScreenDesktop extends StatefulWidget {
  final String imageURL;
  final String name;

  SeriesScreenDesktop({ this.imageURL='https://i.postimg.cc/PqvtrZLq/money-heist3.jpg',this.name = 'Lacase de\nPapel'});

  @override
  State<SeriesScreenDesktop> createState() => _SeriesScreenDesktopState();
}

class _SeriesScreenDesktopState extends State<SeriesScreenDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
       body: CustomScrollView(
         slivers: [

         ],
       ),
    );
  }
}
