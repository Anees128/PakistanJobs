import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Connectivitypage extends StatefulWidget {
  @override
  _ConnectivitypageState createState() => _ConnectivitypageState();
}

class _ConnectivitypageState extends State<Connectivitypage> {
  StreamSubscription<ConnectivityResult> _connectivitySubscription;
  final Connectivity _connectivity = Connectivity();

  @override
  void initState() {
    // TODO: implement initState
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen((result) {
      print(result);
      if (result == ConnectivityResult.wifi) {
        Get.back();
      }
      if (result == ConnectivityResult.mobile) {
        Get.back();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
        body: Center(
          child: Text(
            "NO INTRNET CONNECTION:",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
