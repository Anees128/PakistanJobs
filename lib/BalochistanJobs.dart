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
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text("Balochistan Jobs"),
      ),
    );
  }
}
