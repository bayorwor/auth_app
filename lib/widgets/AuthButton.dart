import 'package:auth_app/main.dart';
import 'package:flutter/material.dart';

class ButtonSubmit extends StatelessWidget {
  ButtonSubmit(
      {required this.btnTxt,
      required this.dvdTxt,
      required this.routeTxt,
      required this.ontap,
      required this.onPress,
      this.notTxt = "I already have an account"});

  final String btnTxt;
  final String dvdTxt;
  final String routeTxt;
  final String notTxt;
  final Function ontap;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          MaterialButton(
            color: color,
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
            shape: StadiumBorder(),
            onPressed: () => onPress(),
            child: Text(
              btnTxt,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [DividerWidget(), Text(dvdTxt), DividerWidget()],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialAuth(
                iconName: Icons.facebook,
              ),
              SizedBox(
                width: 40,
              ),
              SocialAuth(
                iconName: Icons.flutter_dash,
                iconColor: Colors.red,
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(notTxt),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () => ontap(),
                child: Text(
                  routeTxt,
                  style: TextStyle(color: color),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class SocialAuth extends StatelessWidget {
  SocialAuth({this.iconColor = color, required this.iconName});

  final IconData iconName;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle, border: Border.all(color: Colors.grey)),
      height: 40,
      width: 40,
      child: Icon(
        iconName,
        color: iconColor,
      ),
    );
  }
}

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Divider(
        height: 10,
        color: Colors.grey,
      ),
    );
  }
}
