import 'package:auth_app/main.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget({
    required this.name,
    required this.location,
    required this.profile,
    required this.cardImg,
  });

  final String name;
  final String location;
  final String profile;
  final String cardImg;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(profile),
        ),
        title: Text(
          name,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Row(
          children: [
            Icon(
              Icons.location_pin,
              color: color,
              size: 20,
            ),
            Text(location),
          ],
        ),
      ),
      Image(image: AssetImage(cardImg)),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("23"),
                  ),
                  Stack(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: CircleAvatar(
                        radius: 10,
                        backgroundImage: AssetImage("assets/i2.jpeg"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: CircleAvatar(
                        radius: 10,
                        backgroundImage: AssetImage("assets/i5.jpeg"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: CircleAvatar(
                        radius: 10,
                        backgroundImage: AssetImage("assets/i4.jpeg"),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
            Row(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Icon(
                  Icons.message,
                  color: Colors.grey,
                ),
              ),
              Text("23")
            ])
          ],
        ),
      ),
      Divider(
        color: Color(0xFFDEDEDE),
        height: 10,
      )
    ]);
  }
}
