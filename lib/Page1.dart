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
                  height: 170.0,
                  margin: const EdgeInsets.symmetric(
                    vertical: 1.0,
                    horizontal: 10.0,
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
                Column(
                  children: [
                    Container(
                      width: 140,
                      height: 130,
                      margin: EdgeInsets.only(right: 200),
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(

                          // set border width
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                          color: Colors.grey[400]),
                      child: Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/State_emblem_of_Pakistan.svg/1200px-State_emblem_of_Pakistan.svg.png"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Container(
                      width: 140,
                      height: 130,
                      margin: EdgeInsets.only(right: 200),
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(

                          // set border width
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                          color: Colors.grey[400]),
                      child: Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/State_emblem_of_Pakistan.svg/1200px-State_emblem_of_Pakistan.svg.png"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Container(
                      width: 140,
                      height: 130,
                      margin: EdgeInsets.only(right: 200),
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(

                          // set border width
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                          color: Colors.grey[400]),
                      child: Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/State_emblem_of_Pakistan.svg/1200px-State_emblem_of_Pakistan.svg.png"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Container(
                      width: 140,
                      height: 130,
                      margin: EdgeInsets.only(right: 200),
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(

                          // set border width
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                          color: Colors.grey[400]),
                      child: Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/State_emblem_of_Pakistan.svg/1200px-State_emblem_of_Pakistan.svg.png"),
                    ),
                  ],
                ),
              ],
            ),
          ])),
    );
  }
}
