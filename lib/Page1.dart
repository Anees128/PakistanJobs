import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          margin: EdgeInsets.only(top: 3),
          child: Column(children: [
            Column(
              children: <Widget>[
                Container(
                  height: 200.0,
                  margin: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 9.0,
                  ),
                  decoration: BoxDecoration(
                      // set border width
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      color: Colors.grey[400]),
                  child: new Stack(
                    children: <Widget>[],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150.0,
                  margin: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 95.0,
                  ),
                  decoration: BoxDecoration(
                      // set border width
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      color: Colors.grey[400]),
                  child: new Stack(
                    children: <Widget>[],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Container(
                      height: 150.0,
                      margin: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 95.0,
                      ),
                      decoration: BoxDecoration(
                          // set border width
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                          color: Colors.grey[400]),
                      child: new Stack(
                        children: <Widget>[],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Container(
                      height: 150.0,
                      margin: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 95.0,
                      ),
                      decoration: BoxDecoration(
                          // set border width
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                          color: Colors.grey[400]),
                      child: new Stack(
                        children: <Widget>[],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Container(
                      height: 150.0,
                      margin: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 95.0,
                      ),
                      decoration: BoxDecoration(
                          // set border width
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                          color: Colors.grey[400]),
                      child: new Stack(
                        children: <Widget>[],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ])),
    );
  }
}
