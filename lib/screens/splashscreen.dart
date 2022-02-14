import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rights_project/screens/registration/login.dart';

import 'package:rights_project/style.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 7), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) =>  const Login()));
    });


    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: sizeFromWidth(context, 2),
          height: sizeFromHeight(context, 2),
          decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black, width: 1.5),
              boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 3)]),
          child: const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 45,
              child: Image(
                  image: AssetImage(
                'images/logo.png',
              ))),
        ),
      ),
    );
  }
}
