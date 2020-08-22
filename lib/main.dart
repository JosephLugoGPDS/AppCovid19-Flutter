import 'package:covid_alpha/Screens/Welcome/welcome_screen.dart';
import 'package:covid_alpha/constansts.dart';
import 'package:flutter/material.dart';

void main() => runApp(Covid19());


class Covid19 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Covid-19',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}
