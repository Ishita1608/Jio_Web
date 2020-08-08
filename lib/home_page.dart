import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jio_web/Navbar/Navbar.dart';
import 'package:jio_web/slideimages.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavBar(),
            ImageCarousel(),
        ],
    ),
      ),
    );
  }
}
