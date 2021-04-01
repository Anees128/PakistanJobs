import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pakistan_jobs2/SplashScreen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
   static final String title = 'Has Internet?';
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'PakistanJobs2',
      color: Theme.of(context).scaffoldBackgroundColor,
      debugShowCheckedModeBanner: false,
      home: SplashContent(),
    );
  }
}
