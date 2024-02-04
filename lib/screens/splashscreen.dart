import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hfsmobileapp/screens/testscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => TestScreen(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
         // color: Colors.lightBlueAccent,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 80),
            child: Image(
              image: AssetImage('assets/hffoodservicelogo.png'),
              //width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 3,
            )),
      ),
    );
  }
}
