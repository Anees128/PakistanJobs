import 'package:flutter/material.dart';

class SindhJobs extends StatefulWidget {
  @override
  _SindhJobsState createState() => _SindhJobsState();
}

class _SindhJobsState extends State<SindhJobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          "Sindh Jobs",
          style: TextStyle(
              color: Colors.green, fontSize: 23, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
