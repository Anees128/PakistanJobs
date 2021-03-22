import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pakistan_jobs2/MyHomePage1.dart';
import 'package:get/get.dart';
class SplashContent extends StatefulWidget {
  @override
  _SplashContentState createState() => new _SplashContentState();
}

class _SplashContentState extends State<SplashContent> {
  

  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 2), () {
      Get.off(
        MyHomePage()
      );
    });
    super.initState();
  }

  
  @override
  Widget build(BuildContext context) {
    return new Center(
        child: new Image(
      image: new AssetImage("images/imafes.jpg"),
    ));
  }
}
