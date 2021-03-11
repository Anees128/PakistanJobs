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
          backgroundColor: Colors.black87,
          title: Text("Pakistan Jobs2",style: TextStyle(color: Colors.white,fontSize: 25),), actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
             )
        ]),
       body: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            children: <Widget>[
              Container(color: Colors.blueGrey,),
              Container(color: Colors.red,),
              Container(color: Colors.green,),
              Container(color: Colors.blue,),
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
            title: Text('Item One'),
            icon: Icon(Icons.home)
          ),
          BottomNavyBarItem(
            title: Text('Item Two'),
            icon: Icon(Icons.apps)
          ),
          BottomNavyBarItem(
            title: Text('Item Three'),
            icon: Icon(Icons.chat_bubble)
          ),
          BottomNavyBarItem(
            title: Text('Item Four'),
            icon: Icon(Icons.settings)
          ),
        ],
      ),
      ),
    );
  }
}
