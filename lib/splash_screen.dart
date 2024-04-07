import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mytodo/Hom_Screen.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});
  static const String routName="splashScreen";

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed(HomeScreen.routename);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image:AssetImage("assets/images/logo.png") ,

          )
        ),
      ),

    );
  }
}
