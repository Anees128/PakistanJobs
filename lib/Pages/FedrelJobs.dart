import 'package:flutter/material.dart';

class FedrelJobs extends StatefulWidget {
  @override
  _FedrelJobsState createState() => _FedrelJobsState();
}

class _FedrelJobsState extends State<FedrelJobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          "Fedrel Jobs",
          style: TextStyle(
              color: Colors.green, fontSize: 23, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
