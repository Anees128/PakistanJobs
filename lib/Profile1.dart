import 'package:flutter/material.dart';

class Profile1 extends StatefulWidget {
  @override
  _Profile1State createState() => _Profile1State();
}

class _Profile1State extends State<Profile1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text("PROFILE",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 26),),
      ),
      body: Container()
     
    );
  }
}
