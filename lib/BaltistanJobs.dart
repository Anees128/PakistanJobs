import 'package:flutter/material.dart';

class BaltistanJobs extends StatefulWidget {
  @override
  _BaltistanJobsState createState() => _BaltistanJobsState();
}

class _BaltistanJobsState extends State<BaltistanJobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          "Baltistan Jobs",
          style: TextStyle(
              color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }
}
