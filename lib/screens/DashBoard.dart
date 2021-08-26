import 'package:auth_app/widgets/CardWidget.dart';
import 'package:flutter/material.dart';

class SummaryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "Today",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
            ),
          ),
          CardWidget(
            profile: "assets/smart1.jpg",
            name: "Addison Smith",
            location: "New Chicago street, Canada",
            cardImg: "assets/smart1.jpg",
          ),
          CardWidget(
            profile: "assets/smart1.jpg",
            name: "Dominica Frawd",
            location: "St. New jersey, USA",
            cardImg: "assets/smart2.jpg",
          ),
          CardWidget(
            profile: "assets/i1.jpeg",
            name: "Newager Rhino",
            location: "bagonluri, India",
            cardImg: "assets/smart4.JPG",
          ),
          CardWidget(
            profile: "assets/i1.jpeg",
            name: "Shao Zhao",
            location: "Zing Xing Nao, CN",
            cardImg: "assets/smart5.jpg",
          ),
          CardWidget(
            profile: "assets/i1.jpeg",
            name: "Addison Smith",
            location: "Sissal East newtown, Tumu",
            cardImg: "assets/smart6.jpeg",
          ),
        ],
      ),
    );
  }
}
