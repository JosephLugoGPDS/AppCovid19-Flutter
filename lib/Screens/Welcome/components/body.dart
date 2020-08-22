import 'package:covid_alpha/Screens/Signin/signin_screen.dart';
import 'package:covid_alpha/Screens/Signup/signup_screen.dart';
import 'package:covid_alpha/Screens/Welcome/components/background.dart';
import 'package:covid_alpha/components/rounded_button.dart';
import 'package:covid_alpha/constansts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //This size provide us total heigth and width of our screen
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Bienvenido a ...",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SigninScreen();
                }));
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: kPrimaryColor,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUpScreen();
              },));
              }
            ),
          ],
        ),
      ),
    );
  }
}
