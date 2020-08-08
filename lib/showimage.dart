import 'package:flutter/material.dart';
import 'product.dart';


class ShowImage{
  static var count = 6;
  static var title = [
    "AWS follows up India edge\n push with Verizon 5G plug",
    "T-Mobile claims victory over \nAT&T but numbers muddy the waters",
    "Union talks of strike action \nas redundancies loom at BT",
    "3 Europe’s parent company\n CK Hutchison has stated lower \nsubscriber numbers in the UK.",
    "The Telecoms.com Podcast: core network,\n Huawei and Facebook boycott",
    "Convert the Invisible Roamers in \nYour Network Into Visible Profits"

  ];
  static var image = [
    "h1.jpg",
    "h2.jpg",
    "h3.jpg",
    "h4.jpg",
    "h5.jpeg",
    "h6.jpg"
  ];
  static getImage(int position) {
    return Product(title[position],  image[position]);
  }

}

