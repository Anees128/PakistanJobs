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
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text("Fedrel Jobs"),
      ),
    );
  }
}
