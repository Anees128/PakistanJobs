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
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text("Sindh Jobs"),
      ),
    );
  }
}
