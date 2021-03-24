import 'package:flutter/material.dart';

class KPKJobs extends StatefulWidget {
  @override
  _KPKJobsState createState() => _KPKJobsState();
}

class _KPKJobsState extends State<KPKJobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text("KPk Jobs"),
      ),
    );
  }
}
