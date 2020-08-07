import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:jio_web/Navbar/Navbar.dart';
import 'news.dart';
import 'show.dart';

class LandingPage extends StatelessWidget {

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
                News n = Show.getNews(index);
                return AnimationConfiguration.staggeredList(
                  position: index,
                  duration:const Duration(milliseconds: 1000),
                  child: SlideAnimation(
                      verticalOffset: 50.0,
                    child:FlipAnimation(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                      child: Card(
                        child:Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(n.title, style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 25.0),),
                              Padding(
                                  padding: const EdgeInsets.fromLTRB(0.0,12.0,0.0,12.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Flexible(child: Text(n.detail, style: TextStyle( color:Colors.black,fontSize: 22.0),), flex: 3,),
                                      Flexible(
                                        flex: 1,
                                        child: Container(
                                            height: 100.0,
                                            width: 120.0,
                                            child: Image.asset("assets/" + n.image, fit: BoxFit.cover,)
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
              itemCount: Show.count,
            ),
          )
        ],
      ),
    );
  }
}