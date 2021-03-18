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
      Get.to(
        MyHomePage()
      );
    });
    super.initState();
  }

  
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width ;
    double height = MediaQuery.of(context).size.height ;
    return new Center(
        child: new Image(
      image: new AssetImage("images/imafes.jpg"),
      width: width,
      height: height,
    ));
  }
}
