import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

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
            backgroundColor: Colors.green,
            title: Text(
              "Pakistan Jobs2",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            actions: <Widget>[
              Container(
                child: ClipOval(
                  child: Align(
                    heightFactor: 30,
                    child: Image.network(
                        "https://banner2.cleanpng.com/20180401/dbq/kisspng-user-profile-computer-icons-profile-5ac09245049c32.0935523415225697970189.jpg"),
                  ),
                ),
              ),
            ]),
        body: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            children: <Widget>[
              Container(
                color: Colors.blueGrey,
              ),
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.blue,
              ),
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
                activeColor: Colors.blue,
                inactiveColor: Colors.grey,
                title: Text('Favorate'),
                icon: Icon(Icons.favorite)),
          ],
        ),
      ),
    );
  }
}
