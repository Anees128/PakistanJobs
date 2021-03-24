import 'package:flutter/material.dart';

class PunjabJobs extends StatefulWidget {
  @override
  _PunjabJobsState createState() => _PunjabJobsState();
}

class _PunjabJobsState extends State<PunjabJobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Punjab Jobs"),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      
    );
  }
}