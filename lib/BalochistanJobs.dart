import 'package:flutter/material.dart';

class BalochistanJobs extends StatefulWidget {
  @override
  _BalochistanJobsState createState() => _BalochistanJobsState();
}

class _BalochistanJobsState extends State<BalochistanJobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          "Balochistan Jobs",
          style: TextStyle(
              color: Colors.green, fontSize: 23, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
