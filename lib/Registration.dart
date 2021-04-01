import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';
import 'Profile1.dart';
import 'package:get/get.dart';

class Registration1 extends StatefulWidget {
  @override
  _Registration1State createState() => _Registration1State();
}

class _Registration1State extends State<Registration1> {
  final _formKey = GlobalKey<FormState>();
  final fb = FirebaseDatabase.instance;

  final FirebaseAuth auth = FirebaseAuth.instance;
  TextEditingController name = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController number = new TextEditingController();
  TextEditingController country = new TextEditingController();
  final firestoreInstance = FirebaseFirestore.instance;
  File _image;
  // List<Data> dataList = [];
  final picker = ImagePicker();

  bool get success => null;

  registerUser() {
    if (name.text != null &&
        email.text != null &&
        number.text != null &&
        country.text != null) {
      firestoreInstance.collection("users").add({
        "Name": name.text,
        "Email": email.text,
        "Number": number.text,
        "Country": country.text,
      }).then((value) {
        print(value.id);
        Get.back();
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

  // bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
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
          child: Form(
            key: _formKey,
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
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
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
                  textAlign: TextAlign.left,
                  controller: name,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter Your Name';
                    }
                    return null;
                  },
                  decoration: new InputDecoration(
                    
                    hintText: 'User Name',
                    labelText: ' Your Full Name',
                    labelStyle: TextStyle(
                      color: Colors.green,
                    ),
                    icon: new Icon(Icons.person),
                  ),
                ),
                // TextFormField(
                //   // autovalidate: true,

                // validator: (value) {
                //   if (value.isEmpty) {
                //     return 'Please enter your name';
                //   }
                //   return null;
                // },

                TextFormField(
                  controller: email,
                  textAlign: TextAlign.left,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter Email';
                    }
                    return null;
                  },
                  decoration: new InputDecoration(
                    // errorText: "Enter some text",
                    hintText: 'email@example.com',

                    labelText: 'Email Address',
                    labelStyle: TextStyle(
                      color: Colors.green,
                    ),
                    icon: new Icon(Icons.email),
                  ),
                ),
                TextFormField(
                  textAlign: TextAlign.left,
                  controller: number,
                  maxLength: 15,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter Number';
                    }
                    return null;
                  },
                  decoration: new InputDecoration(
                    // errorText: "Enter some text",
                    hintText: 'Phone Number',
                    labelText: 'Enter Your Number',
                    labelStyle: TextStyle(
                      color: Colors.green,
                    ),
                    icon: new Icon(Icons.phone),
                  ),
                ),
                TextFormField(
                  onChanged: (val) {
                    setState(() {
                      country.text = val;
                    });
                  },
                  textAlign: TextAlign.left,

                  controller: country,
                  // obscureText: true,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter Country';
                    }
                    return null;
                  },
                  decoration: new InputDecoration(
                    // errorText: "Enter some text",
                    hintText: 'Your Country',
                    labelText: 'Enter your Country',
                    labelStyle: TextStyle(
                      color: Colors.green,
                    ),
                    icon: new Icon(Icons.near_me),
                  ),
                ),
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
                        if (!_formKey.currentState.validate()) {
                          return;
                        }

                        _formKey.currentState.save();
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
                ),
                SignInButton(
                    Buttons.Google,
                    text: "Sign in with Google",
                    onPressed: () async {
                      // sign in Google with a returning user profile
                      UserCredential userCredential = await signInWithGoogle();
                      final snapShot = await FirebaseFirestore.instance
                          .collection("userData")
                          .doc(userCredential.user.uid)
                          .get();
                      if (snapShot == null || !snapShot.exists) {
                        await FirebaseFirestore.instance
                            .collection("userData")
                            .doc(userCredential.user.uid)
                            .set({'NoOfDecks': 0});
                      }
                      if(success){
                        print("Singnin");
                      }
                    },
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
   Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();
    
    if (googleUser == null) {
      return null;
    }
    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    // Create a new credential
    final GoogleAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  void signOut() async {
    await GoogleSignIn().signOut();
    // _userModel = null;
  }
}
