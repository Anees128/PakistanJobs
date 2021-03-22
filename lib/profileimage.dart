import 'package:flutter/material.dart';
import 'package:get/get.dart';
 

 class ProfileImage extends StatefulWidget {
   @override
   _ProfileImageState createState() => _ProfileImageState();
 }
 
 class _ProfileImageState extends State<ProfileImage> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Center(child:Image(image: (NetworkImage("http://med.gov.bz/wp-content/uploads/2020/08/dummy-profile-pic.jpg")),)),
     );
   }
 }