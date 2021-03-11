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
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(7),
              padding: EdgeInsets.all(90),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.pink[800], // set border color
                      width: 3.0), // set border width
                  borderRadius: BorderRadius.all(
                      Radius.circular(10.0)), // set rounded corner radius
                  // boxShadow: [
                  //   BoxShadow(
                  //     blurRadius: 10,
                  //     color: Colors.black,
                  //     offset: Offset(1, 3),
                  //   ),
                  // ] // make rounded corner of border
                  color: Colors.grey[500]
                  ),
              child: Text("My demo styling"),
            ),
            Container(
              margin: EdgeInsets.all(7),
              padding: EdgeInsets.all(50),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.pinkAccent, // set border color
                      width: 3.0), // set border width
                  borderRadius: BorderRadius.all(
                      Radius.circular(20.0)), // set rounded corner radius
                  // boxShadow: [
                  //   BoxShadow(
                  //     blurRadius: 10,
                  //     color: Colors.black,
                  //     offset: Offset(1, 3),
                  //   ),
                  // ] // make rounded corner of border
                  color: Colors.grey[500]
                  ),
              child: Text("My demo styling"),
            ),
            Container(
              margin: EdgeInsets.all(7),
              padding: EdgeInsets.all(50),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.pink[800], // set border color
                      width: 3.0), // set border width
                  borderRadius: BorderRadius.all(
                      Radius.circular(20.0)), // set rounded corner radius
                  // boxShadow: [
                  //   BoxShadow(
                  //     blurRadius: 10,
                  //     color: Colors.black,
                  //     offset: Offset(1, 3),
                  //   ),
                  // ] // make rounded corner of border
                  color: Colors.grey[500]
                  ),
              child: Text("My demo styling"),
            ),
            Container(
              margin: EdgeInsets.all(7),
              padding: EdgeInsets.all(50),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.green[500], // set border color
                      width: 3.0), // set border width
                  borderRadius: BorderRadius.all(
                      Radius.circular(20.0)), // set rounded corner radius
                  // boxShadow: [
                  //   BoxShadow(
                  //     blurRadius: 10,
                  //     color: Colors.black,
                  //     offset: Offset(1, 3),
                  //   ),
                  // ] // make rounded corner of border
                  color: Colors.grey[400]
                  ),
              child: Text("My demo styling"),
            ),
            Container(
              margin: EdgeInsets.all(7),
              padding: EdgeInsets.all(50),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.pink[800], // set border color
                      width: 3.0), // set border width
                  borderRadius: BorderRadius.all(
                      Radius.circular(20.0)), // set rounded corner radius
                  // boxShadow: [
                  //   BoxShadow(
                  //     blurRadius: 10,
                  //     color: Colors.black,
                  //     offset: Offset(1, 3),
                  //   ),
                  // ] // make rounded corner of border
                  color: Colors.grey[500]
                  ),
              child: Text("My demo styling"),
            ),

          ],
        ),
      ),
    );
  }
}
