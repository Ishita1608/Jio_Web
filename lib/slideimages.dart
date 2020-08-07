import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class SlideImage extends StatefulWidget {
  @override
  _SlideImageState createState() => _SlideImageState();
}

class _SlideImageState extends State<SlideImage> {
  
  int _current = 0;
  List imgList = [
    'assets/h1.jpg',
    'assets/h2.jpg',
    'assets/h3.jpg',
    'assets/h4.jpg',
    'assets/h5.jpeg',
    'assets/h6.jpg'
  ];
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black12,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              items: imgList.map((imgurl){
                return Builder(
                  builder: (BuildContext context){
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.green,
                      ),
                      child: Image.asset(imgurl,fit: BoxFit.fill,),
                    );
                  },
                );
                }).toList(), options: null,
            ),
      ],
    ),
    );

  }
}




