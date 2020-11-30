import 'package:flutter/material.dart';
import 'package:jio_web/Analysis/analysis.dart';
import 'package:jio_web/LandingPage/LandingPage.dart';


import 'package:jio_web/home_page.dart';

import '../imagecarousl.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: DesktopNavbar(),
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left:20.0,
                right:30.0),
            child: InkWell(
              child: Text(
                'HOME',
                style: TextStyle(
                  color: Colors.white,

                //  fontFamily: 'DancingScript',
                ),
              ),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ImageCaroulsel()));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: InkWell(
              child: Text(
                'NEWS',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => LandingPage()));
              }
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(right: 50.0),
              child: InkWell(
                child: Text(
                  'ANALYSIS',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Analysis()));
                },
              ),
            ),
          ),
          ],
      ),
    );
  }
}


