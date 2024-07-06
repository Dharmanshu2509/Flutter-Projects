import 'dart:async';

import 'package:first_flutter_project_demo/pages/introScreen.dart';
import 'package:first_flutter_project_demo/pages/loginScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => IntroScreen(),));
    });

  }

  @override
  Widget build(BuildContext context) {
    //final height2 = MediaQuery.of(context).size.height;
    //final width2 = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Colors.blue,
          child:Center(child: Text('Splash Screen', style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),)),
          /*height: height2,
          width: width2,
          child:
              Image.asset('assets/images/splash_image.jpg', fit: BoxFit.cover)),*/
      ));
  }
}

/*@override
  Widget build(BuildContext context) {
    final height2 = MediaQuery.of(context).size.height;
    final width2 = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        /*color: Colors.blue,
          child:Center(child: Text('Splash Screen', style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),)),*/
          height: height2,
          width: width2,
          child: Image.asset('assets/images/radha_krishna.jpg', fit: BoxFit.cover),
      ),
    );
  }*/
