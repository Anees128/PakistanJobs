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
    return SafeArea(
      child: Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(2),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 30,
                    children: _listItem
                        .map(
                          (item) => Card(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(7),
                                image: DecorationImage(
                                    image: AssetImage(item),
                                    fit: BoxFit.contain),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
