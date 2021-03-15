import 'package:flutter/material.dart';
class Column1 extends StatefulWidget {
  @override
  _Column1State createState() => _Column1State();
}

class _Column1State extends State<Column1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
    children: <Widget>[
      Container(
        height: 150.0,
        margin: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 24.0,
        ),
        child: new Stack(
          children: <Widget>[
            
          ],
        ),
      ),
      new Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              new Column(
                children: <Widget>[
                  Text("SEP"),
                  Text("30"),
                ],
              ),
              Expanded(
                 child:new Column(
                   children: <Widget>[
                     new Text("title"),
                     new Text("Sub title"),
                     new Text("Second Sub Title"),
                   ],
                 )
              )
            ],
          ),

        ],
      )
    ],
  ),
);
}
    
  }
