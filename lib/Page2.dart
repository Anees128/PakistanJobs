import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

final List<String> _listItem = [
  'images/pak1.png',
  'images/pak2.png',
  'images/pak3.png',
  'images/pak4.png',
  'images/pak5.png',
  'images/pak5.png',
  'images/pak5.png',
  'images/pak5.png',
  'images/pak5.png',
  'images/pak1.png',
  'images/pak5.png',
  'images/pak5.png',
  'images/pak5.png',
  'images/pak5.png',
  'images/pak1.png',
];

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SafeArea(
          child: Container(
            height: height,
            width: width * 2,
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: GridView.builder(
                    itemCount: _listItem.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 9/11,
                    ),
                    itemBuilder: (context,index) => Column(
                            children: [
                              Card(
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(_listItem[index]), fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Text("Name"),


                            ],
                          ),
                        )
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
