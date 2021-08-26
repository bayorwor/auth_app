import 'package:auth_app/auth/Register.dart';
import 'package:auth_app/main.dart';
import 'package:auth_app/screens/HomeScreen.dart';
import 'package:auth_app/widgets/AuthButton.dart';
import 'package:auth_app/widgets/Header.dart';
import 'package:auth_app/widgets/InputWidget.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Header(
                  title: "Welcome back!",
                  txt: "We are happy to see you. You can Login and continue"),
              SizedBox(
                height: 30,
              ),
              InputWidget(
                labeltxt: "enter email",
                prefixicon: Icons.email,
              ),
              InputWidget(
                labeltxt: "enter password",
                prefixicon: Icons.lock,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  "Forget password",
                  style: TextStyle(color: color),
                ),
              ),
              Spacer(),
              ButtonSubmit(
                btnTxt: "Sign in",
                routeTxt: "Sign up",
                dvdTxt: 'or Signup with',
                notTxt: "I don't have an account",
                onPress: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                ontap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Register()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
