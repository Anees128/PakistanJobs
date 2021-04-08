import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pakistan_jobs2/Registrations/Profile1.dart';
import 'package:pakistan_jobs2/Registrations/SignInPage.dart';
import 'package:get/get.dart';

class SignUpPage1 extends StatefulWidget {
  @override
  _SignUpPage1State createState() => _SignUpPage1State();
}

class _SignUpPage1State extends State<SignUpPage1> {
  final _formKey = GlobalKey<FormState>();
  final fb = FirebaseDatabase.instance;

  final FirebaseAuth auth = FirebaseAuth.instance;
  TextEditingController name = new TextEditingController();
  TextEditingController email = new TextEditingController();
  // TextEditingController number = new TextEditingController();
  TextEditingController pass = new TextEditingController();

  final firestoreInstance = FirebaseFirestore.instance;

  bool get success => null;

  registerUser() {
    if (name.text != null && email.text != null) {
      firestoreInstance.collection("users").add({
        "Name": name.text,
        "Email": email.text,
      }).then((value) {
        print(value.id);
        Get.to(SignInPage1());
      });
    }
  }

  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(38.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: IconButton(
                    padding: EdgeInsets.only(right: 50),
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.green,
                    ),
                    onPressed: () {
                      Get.off(ProfilePage1());
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Welcome"),
                Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  "Your Name",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0XFFa8ccd7),
                    borderRadius: BorderRadius.circular(100.0),
                    // boxShadow: [
                    //   BoxShadow(
                    //       color: Color.fromRGBO(0, 0, 0, 0.1),
                    //       offset: Offset(6, 2),
                    //       blurRadius: 6.0,
                    //       spreadRadius: 3.0),
                    //   BoxShadow(
                    //       color: Color.fromRGBO(255, 255, 255, 0.9),
                    //       offset: Offset(-6, -2),
                    //       blurRadius: 6.0,
                    //       spreadRadius: 3.0)
                    // ]
                  ),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.always,
                    controller: name,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter Name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        border: InputBorder.none,
                        hintText: "Enter Your Name",
                        hintStyle: TextStyle(color: Colors.grey)),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Email",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0XFFa8ccd7),
                    borderRadius: BorderRadius.circular(100.0),
                    // boxShadow: [
                    //   BoxShadow(
                    //       color: Color.fromRGBO(0, 0, 0, 0.1),
                    //       offset: Offset(6, 2),
                    //       blurRadius: 4.0,
                    //       spreadRadius: 3.0),
                    //   BoxShadow(
                    //       color: Color.fromRGBO(255, 255, 255, 0.9),
                    //       offset: Offset(-6, -2),
                    //       blurRadius: 6.0,
                    //       spreadRadius: 3.0)
                    // ],
                  ),
                  child: TextFormField(
                    controller: email,
                    autovalidateMode: AutovalidateMode.always,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter Email';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      border: InputBorder.none,
                      hintText: "Enter your Email",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Password",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0XFFa8ccd7),
                    borderRadius: BorderRadius.circular(100.0),
                    // boxShadow: [
                    //   BoxShadow(
                    //       color: Color.fromRGBO(0, 0, 0, 0.1),
                    //       offset: Offset(6, 2),
                    //       blurRadius: 4.0,
                    //       spreadRadius: 3.0),
                    //   BoxShadow(
                    //       color: Color.fromRGBO(255, 255, 255, 0.9),
                    //       offset: Offset(-6, -2),
                    //       blurRadius: 6.0,
                    //       spreadRadius: 3.0)
                    // ]
                  ),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.always,
                    obscureText: true,
                    controller: pass,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter Password';
                      } else if (value.length < 8) {
                        return 'Pass must be at least 8 characters';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      border: InputBorder.none,
                      hintText: "Enter Password",
                      // icon: Icon(Icons.visibility_off),
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: MaterialButton(
                        onPressed: () async {
                          await auth
                              .createUserWithEmailAndPassword(
                                  email: email.text, password: pass.text)
                              .then((value) {
                            print('Login Successful');
                          });
                          Get.to(SignInPage1());
                          if (!_formKey.currentState.validate()) {
                            return;
                          }
                          _formKey.currentState.save();

                          registerUser();
                        },
                        child: Container(
                          padding: EdgeInsets.all(15.0),
                          child: Center(
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16.0),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0XFFFF27B0),
                            borderRadius: BorderRadius.circular(100.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0XFFFF27B0),
                                  offset: Offset(2, 2),
                                  // blurRadius: 1.0,
                                  spreadRadius: 2.0),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 0.7),
                MaterialButton(
                  onPressed: () {
                    Get.off(SignInPage1());
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: 30),
                    height: 30,
                    width: 300,
                    child: Text("don't have account?  SignIn"),
                  ),
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
