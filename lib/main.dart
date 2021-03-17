import 'package:flutter/material.dart';
import 'package:pakistan_jobs2/SplashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PakistanJobs2',
      debugShowCheckedModeBanner: false,
      home:SplashContent(),
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Color(0xFF761322),
      ),
      
    );
  }
}
