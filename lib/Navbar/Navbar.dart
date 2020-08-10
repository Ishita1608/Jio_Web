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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left:30.0,
                right:20.0),
            child: InkWell(
              child: Text(
                'Jio',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30
                //  fontFamily: 'DancingScript',
                ),
              ),
              onTap: (){},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50.0,right: 0.0),
            child: FlatButton.icon(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ImageCaroulsel()));
            }, icon: Icon(Icons.home,color: Colors.white,), label: Text(
              'home'
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50.0),
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


