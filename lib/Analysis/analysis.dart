import 'package:flutter/material.dart';
import 'package:jio_web/Analysis/infographics.dart';
import 'package:jio_web/Navbar/Navbar.dart';
import 'package:jio_web/Analysis/info.dart';
import 'package:jio_web/Analysis/infographics.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';


class Analysis extends StatelessWidget {
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

                Infographics i = Info.getInfo(index);
                return AnimationConfiguration.staggeredList(
                  position:index,
                  duration:const Duration(milliseconds: 2000),
                  child: SlideAnimation(
                    verticalOffset: 50.0,
                    child:FlipAnimation(
                      child:  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                  child: Card(
                    child:Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(i.title, style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 25.0),),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0.0,12.0,0.0,12.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Flexible(child: Text(i.detail, style: TextStyle( color:Colors.black,fontSize: 22.0),), flex: 3,),
                                  Flexible(
                                    flex: 1,
                                    child: Container(
                                        height: 100.0,
                                        width: 120.0,
                                        child: Image.asset("assets/" + i.image, fit: BoxFit.cover,)
                                    ),
                                  ),
                                ],
                              )
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                    ),
                  ),
            );
  },

                itemCount: Info.count,
          ),
  ),
  ],
  ),
    );
  }
}
