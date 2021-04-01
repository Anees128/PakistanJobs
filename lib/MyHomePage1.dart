import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:pakistan_jobs2/Connectivitypage.dart';
import 'package:pakistan_jobs2/Profile1.dart';
import 'Page1.dart';
import 'Page2.dart';
import 'Page4.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String connectionStatus = 'Unknown';
  final Connectivity _connectivity = Connectivity();
  StreamSubscription<ConnectivityResult> _connectivitySubscription;
  int _currentIndex = 0;
  PageController _pageController;
  

  @override
  void initState() {
    super.initState();
    initConnectivity();
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen((result) {
      print(result);
      if (result == ConnectivityResult.none) {
        Get.to(() => Connectivitypage());
      }
    });
    _pageController = PageController();
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    switch (result) {
      case ConnectivityResult.wifi:
      case ConnectivityResult.mobile:
      case ConnectivityResult.none:
        setState(() => connectionStatus = result.toString());
        break;
      default:
        setState(() => connectionStatus = 'Failed to get connectivity.');
        break;
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    _connectivitySubscription.cancel();
    super.dispose();
  }

  Future<void> initConnectivity() async {
    ConnectivityResult result = ConnectivityResult.none;
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      print(e.toString());
    }
    if (!mounted) {
      return Future.value(null);
    }
    return _updateConnectionStatus(result);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          automaticallyImplyLeading: true,
          title: Text(
            "Pakistan Jobs2",
            style: TextStyle(
                color: Colors.green,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          //this is circle avatar and search
          actions: <Widget>[
            IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.green,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage1()),
                  );
                }),
            Center(
              child: Stack(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfilePage1()),
                      );
                    },
                    child: Container(
                      width: 40,
                      height: height,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 4,
                            color: Theme.of(context).scaffoldBackgroundColor),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0, 10))
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://thumbs.dreamstime.com/z/user-avatar-line-icon-account-outline-vector-sign-linear-style-pictogram-isolated-white-admin-profile-symbol-logo-illustration-107743603.jpg",
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
      body: Container(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            Page1(),
            Page2(),
            // Page3(),
            Page4(),
            //   Container(color: Colors.red,),
            //   Container(color: Colors.green,),
            //   Container(color: Colors.blue,),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            inactiveColor: Colors.grey,
            activeColor: Colors.blue,
            title: Text('Home'),
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavyBarItem(
              inactiveColor: Colors.grey,
              activeColor: Colors.blue,
              title: Text('Category'),
              icon: Icon(Icons.apps)),
          BottomNavyBarItem(
              inactiveColor: Colors.grey,
              activeColor: Colors.blue,
              title: Text('Video'),
              icon: Icon(Icons.slow_motion_video_rounded)),
          BottomNavyBarItem(
            activeColor: Colors.red,
            inactiveColor: Colors.grey,
            title: Text('Favorate'),
            icon: Icon(Icons.favorite),
          ),
        ],
      ),
       floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      foregroundColor: Colors.green,
      onPressed: () {
        Get.to(ProfilePage1());
      },
    ),
    );
  }
}
