import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:pakistan_jobs2/Profile1.dart';

import 'Page1.dart';
import 'Page2.dart';
import 'Page3.dart';
import 'Page4.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.green[900],
            title: Text(
              "Pakistan Jobs2",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            
            actions: <Widget>[
              FlatButton(
              minWidth: 1,
                color: Colors.red,
                onPressed: () {  },
                child: Row(
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.green[900],
                        child: Icon(Icons.person)),
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

              Page3(),
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
                icon: Icon(Icons.favorite)),
          ],
        ),
      ),
    );
  }
}
