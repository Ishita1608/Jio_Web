import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jio_web/Navbar/Navbar.dart';
import 'package:jio_web/slideimages.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int photoIndex = 0;

  List<String> photos = [
    'h1.jpg',
    'h2.jpg'
  ];

  void _previousImage(){
    setState(() {
      photoIndex = photoIndex > 0 ? photoIndex -1 : 0;
    });
  }

  void _nextImage(){
    setState(() {
      photoIndex = photoIndex < photos.length - 1 ? photoIndex + 1 : photoIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavBar(),
        //    SlideImage(),
        ],
    ),
      ),
    );
  }
}
