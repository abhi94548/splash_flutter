import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splash_flutter/config.dart';
import 'package:splash_flutter/main.dart';

class SplashScreenPageWidget extends StatefulWidget {
  const SplashScreenPageWidget({Key? key}) : super(key: key);

  @override
  _SplashScreenPageWidgetState createState() => _SplashScreenPageWidgetState();
}

class _SplashScreenPageWidgetState extends State<SplashScreenPageWidget> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2) , () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => MyHomePage(title: "Welcome")));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConfig().primaryColor,
      body: Container(
        child: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ),
        ),
      ),
    );
  }
}
