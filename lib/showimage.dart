import 'package:flutter/material.dart';
import 'product.dart';


class ShowImage{
  static var count = 6;
  static var title = [
    "UK sets up new watchdog to take on Facebook, Google, etc ",
    "T-Mobile claims victory over AT&T but numbers muddy the waters",
    "Union talks of strike action as redundancies loom at BT",
    "3 Europe’s parent company CK Hutchison has stated lower subscriber numbers in the UK.",
    "The Telecoms.com Podcast: core network, Huawei and Facebook boycott",
    "Convert the Invisible Roamers in Your Network Into Visible Profits"

  ];
  static var image = [
    "h1.jpg",
    "h2.jpg",
    "h3.jpg",
    "h4.jpg",
    "h5.jpeg",
    "h6.jpg"
  ];
  static var subt = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum enim augue, fermentum a commodo vitae, sollicitudin quis odio. Pellentesque facilisis interdum nisi sit amet porttitor. Etiam sollicitudin nunc dui, vitae finibus nisi maximus sed. Curabitur maximus purus non magna vulputate, a rhoncus risus fermentum.",
    "Quisque non urna hendrerit sapien vehicula varius id quis nunc. In sit amet dui eu tellus ullamcorper fringilla vitae nec neque. Sed dictum, leo ut facilisis maximus, odio massa egestas lacus, ut iaculis orci justo at urna. In at convallis ligula. Suspendisse tristique sit amet lectus et aliquet.",
    "Phasellus convallis venenatis leo vel eleifend. Donec laoreet sagittis augue, eget pretium orci elementum quis. Maecenas gravida felis non vulputate pellentesque. Vestibulum velit augue, ultricies eget efficitur eu, pulvinar vitae arcu. Praesent convallis nec quam lobortis interdum. ",
    "Phasellus vitae justo a felis semper ornare. Mauris sodales sit amet libero non mattis. Nulla varius sapien a fermentum vestibulum. Aliquam fringilla fringilla lacus, quis fringilla turpis ultricies vel. Sed gravida efficitur felis ut convallis. Praesent eget sollicitudin diam, ut feugiat ligula. Nullam urna felis, tincidunt aliquet arcu quis, molestie iaculis orci.",
    "Cras nec justo fringilla, elementum sem ut, suscipit magna. Proin non sem hendrerit, hendrerit orci eu, auctor tellus. Vivamus eget congue lectus, et blandit elit. Praesent vitae lorem id eros porttitor pretium a eget lacus. Sed justo urna, imperdiet nec fermentum posuere, dapibus ac turpis. Proin pulvinar quis diam quis vestibulum.",
    "Vivamus posuere malesuada lacus in auctor. Vivamus et nisi ac mauris tristique consectetur sodales ut nisi. In vestibulum euismod magna vel pellentesque. Morbi velit purus, molestie eget aliquam sit amet, dictum vitae dui. Maecenas aliquet molestie turpis ac tempor. Integer id diam nulla. Nam viverra felis ut dolor maximus porta ac sed libero."

  ];
  static getImage(int position) {
    return Product(title[position], image[position],subt[position]);
  }

}

