
import 'package:jio_web/Analysis/infographics.dart';

class Info{
  static var count = 6;
  static var title = [
    "Infographic: Is privacy a right or a commodity?",
    "Infographic: Who do Telecoms.com readers think is winning the 5G race?",
    "Infographic: Does social media influence our spending?",
    "What do we actually use our smartphones for?",
    "Do you have a handle on your digital footprint?",
    "The future of smart homes",
    "What Brits think of the smart home"
  ];
  static var detail = [
    "With the digital economy leaning more heavily on user openness and sharing personal information, you have to ask how privacy should be regulated.",
    "Last week, research from Deloitte placed China at the front of the pack in the race for the 5G dream, so we asked Telecoms.com readers in a snap poll who they thought was winning.",
    "Advertising on social media is nothing new, but some sceptical individuals might question whether there is any value in it. New data from Royal Mail argues the case it is more influential than we think.",
    "We all see more and more people glued to the blue-screens for an increasing amount of time, but what are they actually doing on there is they aren’t talking to anyone.",
    "It might seem obvious, but sometimes we just need to be reminded of how much information we give away without thinking about it.",
    "A mirror which gives you skincare advice or a device which tells you what your dog is saying; how ready are you for the home of tomorrow? Here, Heshaam Hague, Outreach Executive from Service Octopus give us a view into what the smart homes of the future will look like."
    "The smart home is proving to be one of the most hotly contested areas of the burgeoning technology industry, but how do we actually feel about the idea of a connected home."
  ];
  static var image = [
  "Guesswork.jpg",
    "Competition.jpg",
    "Unsure.jpg",
    "Smartphone.jpg",
    "Footprint.jpg",
    "yehh.jpg",
    "Wink.jpg"
  ];

      static getInfo(int position) {
        return Infographics(title[position], detail[position], image[position]);
  }

}