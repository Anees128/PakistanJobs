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
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          "KPk Jobs",
          style: TextStyle(
              color: Colors.green, fontSize: 23, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
