import 'package:auth_app/auth/Login.dart';
import 'package:auth_app/main.dart';
import 'package:auth_app/screens/HomeScreen.dart';
import 'package:auth_app/widgets/AuthButton.dart';
import 'package:auth_app/widgets/Header.dart';
import 'package:auth_app/widgets/InputWidget.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Header(
                  title: "Welcome back!",
                  txt:
                      "We are happy to see you. You can Register and continue"),
              SizedBox(
                height: 30,
              ),
              InputWidget(
                labeltxt: "enter email",
                prefixicon: Icons.email,
              ),
              InputWidget(
                labeltxt: "enter name",
                prefixicon: Icons.verified_user,
              ),
              InputWidget(
                labeltxt: "enter password",
                prefixicon: Icons.lock,
              ),
              InputWidget(
                labeltxt: "confirmed password",
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
                btnTxt: "Register",
                routeTxt: "Sign in",
                dvdTxt: 'or Signup with',
                onPress: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                ontap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Login()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
