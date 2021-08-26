import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Header({required this.title, required this.txt});

  final String title;
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          txt,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    ));
  }
}
