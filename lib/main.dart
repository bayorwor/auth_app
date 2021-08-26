import 'package:auth_app/auth/Login.dart';
import 'package:auth_app/auth/Register.dart';
import 'package:auth_app/widgets/Header.dart';
import 'package:flutter/material.dart';

import 'widgets/AuthButton.dart';

const color = Color(0xFF0461FE);
void main(List<String> args) {
  runApp(MaterialApp(
    home: WelcomeScreen(),
  ));
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(
                title: "Welcome to \n helpert!",
                txt:
                    " Be around those who help you feel comfortable being the ambitious, go-getter you are, so you can become the successful person you’re meant to be"),
            Spacer(),
            ButtonSubmit(
                btnTxt: "Create an Account",
                routeTxt: "Sign in",
                dvdTxt: 'or Signup with',
                onPress: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Register()));
                },
                ontap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Login()));
                })
          ],
        ),
      )),
    );
  }
}
