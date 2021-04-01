import 'package:flutter/material.dart';

class PunjabJobs extends StatefulWidget {
  @override
  _PunjabJobsState createState() => _PunjabJobsState();
}

class _PunjabJobsState extends State<PunjabJobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Punjab Jobs",
          style: TextStyle(
              color: Colors.green, fontSize: 23, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}
