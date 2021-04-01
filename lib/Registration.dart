import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'Profile1.dart';
import 'package:get/get.dart';

class Registration1 extends StatefulWidget {
  @override
  _Registration1State createState() => _Registration1State();
}

class _Registration1State extends State<Registration1> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final fb = FirebaseDatabase.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController name = new TextEditingController();
  TextEditingController pass = new TextEditingController();
  TextEditingController email = new TextEditingController();
  final firestoreInstance = FirebaseFirestore.instance;

  File _image;
  final picker = ImagePicker();

  registerUser() {
    if (name.text != null && pass.text != null && email.text != null)
     {
      firestoreInstance.collection("users").add({
        "name": "${name.text}",
        "password": "${pass.text}",
        "email": "${email.text}",
      }).then((value) {
        print(value.id);
      });
    }
  }

  Future getImage(ImageSource source) async {
    final pickedFile = await picker.getImage(source: source);

    setState(() {
      if (pickedFile != null) {
        setState(() {
          _image = File(pickedFile.path);
        });
      } else {
        print('No image selected.');
      }
    });
  }

  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          "Registration",
          style: TextStyle(color: Colors.green),
        ),
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.green,
          ),
          onPressed: () {
            Get.to(ProfilePage1());
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.green,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              SizedBox(
                height: 5,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 4,
                            color: Theme.of(context).scaffoldBackgroundColor),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(0, 10),
                          )
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: _image == null
                              ? NetworkImage(
                                  "http://med.gov.bz/wp-content/uploads/2020/08/dummy-profile-pic.jpg",
                                )
                              : FileImage(_image),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: TextButton(
                        onPressed: () {
                          showDialog(
                              builder: (ctx) {
                                return SimpleDialog(
                                  children: [
                                    SimpleDialogOption(
                                      child: Text(
                                        "",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ),
                                    SimpleDialogOption(
                                      child: Text(
                                        "Choose From Camera",
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      onPressed: () {
                                        getImage(ImageSource.camera);
                                      },
                                    ),
                                    SimpleDialogOption(
                                      child: Text(
                                        "Choose From Gallery",
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      onPressed: () {
                                        getImage(ImageSource.gallery);
                                      },
                                    ),
                                    SimpleDialogOption(
                                      child: Text(
                                        "Cancel",
                                        style: TextStyle(color: Colors.red),
                                      ),
                                      onPressed: () {
                                        Get.back();
                                      },
                                    )
                                  ],
                                );
                              },
                              context: context);
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            color: Colors.green,
                          ),
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              TextFormField(
                  controller: name,
                  onChanged: (val) {
                    name.text = val;
                  },
                  decoration: new InputDecoration(
                    hintText: 'User Name',
                    labelText: 'Enter your name',
                    labelStyle: TextStyle(
                      color: Colors.purple,
                    ),
                    icon: new Icon(Icons.person),
                  )),
              TextFormField(
                  onChanged: (val) {
                    email.text = val;
                  },
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: new InputDecoration(
                    hintText: 'email@example.com',
                    labelText: 'Email Address',
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    icon: new Icon(Icons.email),
                  )),
              TextFormField(
                  onChanged: (val) {
                    pass.text = val;
                  },
                  controller: pass,
                  obscureText: true, // Use secure text for passwords.
                  decoration: new InputDecoration(
                      hintText: 'Password',
                      labelText: 'Enter your password',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      icon: new Icon(Icons.lock))),
              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      Get.back(result: ProfilePage1);
                    },
                    child: Text(
                      "CANCEL",
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2.2,
                          color: Colors.black),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () async {
                      registerUser();
                    },
                    color: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "SAVE",
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2.2,
                          color: Colors.white),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
