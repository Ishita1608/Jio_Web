import 'package:flutter/material.dart';
import 'news.dart';

class Show{

  static var count = 8;
  static var title = [
    "5G devices hit the headlines as Huawei and Apple beat China’s 17% plunge",
    "Intel shares dive on continued manufacturing woes",
    "Peace breaks out as Amdocs acquires Openet for €180 million",
    "Vodafone to float tower unit as COVID-19 bites 1.3% out of revenues",
    "HPE sidles up to the open networking movement with a new 5G lab",
    "Twitter reports massive user growth, but revenues fail to follow",
    "France looks set to follow UK’s Huawei ban after all",
    "Slack legally challenges Microsoft cloud bundling strategy"
  ];
  static var detail = [
    "Despite a 17% year-on-year decline in China’s smartphone shipments, Huawei and Apple have risen above the trend, while 5G-enabled devices account for 33% of all sales.",
    "US chip giant Intel reported strong revenues for Q2 2020,"
        " but a downbeat outlook compounded by its continued struggles with the 7nm process drove its share price down by 12%.",
    "Two years after they concluded their bitterly fought litigation, telecoms software firm Amdocs has buried the hatchet with BSS vendor Openet by buying it.",
    "Vodafone CEO Nick Read has said the team is pursuing a listing of the newly created tower division in Frankfurt, while the COVID-19 period has been navigated without too many dents to the hull.",
    "Hewlett Packard Enterprise has unveiled the HPE 5G Lab, which is designed to accelerate adoption of open, multivendor 5G solutions.",
    "COVID-19 has been a difficult time to many companies, and Twitter has failed to buck the trend as the contraction of online advertising dollars shrinks the spreadsheets.",
    "A report has claimed that the French cyber-security authority has told operators it won’t renew the licenses for any Huawei kit they buy once they expire.",
    "Slack has filed a lawsuit with the European Commission which could offer hope to niche cloud service providers as supply chain rationalisation hovers on the horizon."
  ];
  static var image = [
    "5g.jpg",
    "Intel.jpg",
    "MA.jpg",
    "Vodafone.jpg",
    "HPE.jpg",
    "Twitter1.png",
    "France.jpg",
    "Slack.jpg"
  ];


  static getNews(int position) {
    return News(title[position], detail[position], image[position]);
  }


}