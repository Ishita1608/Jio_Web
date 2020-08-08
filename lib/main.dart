import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jio_web/LandingPage/LandingPage.dart';
import 'package:jio_web/Navbar/Navbar.dart';
import 'package:jio_web/home_page.dart';

import 'imagecarousl.dart';


  void main() => runApp(MyApp());

  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
      title: 'jio website',
        theme: ThemeData(
          primarySwatch: Colors.grey
        ),
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      );
    }
  }

  class MyHomePage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
       color: Colors.black12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //NavBar(),
            Expanded(
              child:
              ImageCaroulsel()
              ),



          ],
        ),
      ),
      );

    }
  }

