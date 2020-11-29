import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:jio_web/Navbar/Navbar.dart';
import 'package:jio_web/product.dart';
import 'package:jio_web/showimage.dart';




class ImageCaroulsel extends StatefulWidget {
  @override
  _ImageCaroulselState createState() => _ImageCaroulselState();
}

class _ImageCaroulselState extends State<ImageCaroulsel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: Column(
        children: [
          NavBar(),
          Expanded(
            child:  ListView.builder(
              itemBuilder: (context,index){
                Product n = ShowImage.getImage(index);
                return AnimationConfiguration.staggeredList(
                  position: index,
                  duration:const Duration(milliseconds: 1000),
                  child: SlideAnimation(
                    verticalOffset: 50.0,
                    child:FlipAnimation(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                        child: Card(
                          child:Row(
                           // crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                            child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Container(
                                    height: 200.0,
                                    width: 600.0,
                                    child: Image.asset("assets/" + n.Image, fit: BoxFit.cover,)
                                ),
                             ),
                              ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(left:10.0,bottom: 0,top: 0),
                              child: Column(
                                children: [
                                  Align(
                                    child: Text(n.title,
                                      style: TextStyle(color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0
                                      ),
                                    ),
                                    alignment: Alignment.topLeft,
                                  ),
                                  Text(n.subt,
                                    style: TextStyle(color: Colors.black,
                                        fontSize: 15.0),
                                  ),
                                ],
                              ),
                            ),
                          ),
                            ],
                          ),
                                    )
                                ),
                      ),
                            ),
                );
              },
              itemCount: ShowImage.count,
            ),
          )
        ],
      ),
    );
  }
}
