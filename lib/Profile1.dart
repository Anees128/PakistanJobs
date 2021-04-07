import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pakistan_jobs2/SignInPage.dart';
import 'package:pakistan_jobs2/SignUpPage.dart';
import 'package:share/share.dart';
import 'MyHomePage1.dart';
import 'package:get/get.dart';
import 'dart:io';

class ProfilePage1 extends StatefulWidget {
  @override
  _ProfilePage1State createState() => _ProfilePage1State();
}

class _ProfilePage1State extends State<ProfilePage1> {
  bool _switchValue = false;
  File _image;
  final picker = ImagePicker();

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFEFF3F6),
        title: Text(
          "ProfilePage",
          style: TextStyle(color: Colors.green),
        ),
        elevation: 1,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.green,
            ),
            onPressed: () {
              Get.to(MyHomePage());
            }),
        actions: [
          Container(
            height: 20,
            decoration: BoxDecoration(
                color: Color(0XFFa8ccd7),
                borderRadius: BorderRadius.circular(100.0),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      offset: Offset(6, 2),
                      blurRadius: 6.0,
                      spreadRadius: 3.0),
                  BoxShadow(
                      color: Color.fromRGBO(255, 255, 255, 0.9),
                      offset: Offset(10, -2),
                      blurRadius: 6.0,
                      spreadRadius: 3.0)
                ]),
            child: MaterialButton(
              child: Text(
                "Log out",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 10, right: 16),
        child: ListView(
          children: [
            Center(
              child: Stack(
                children: [
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                          border: Border.all(width: 3, color: Colors.white),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0, 10),
                            ),
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
                    ),
                  ),
                  //this is for upload image
                  Positioned(
                    bottom: 0,
                    right: 5,
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
                                  Row(
                                    children: [
                                      SimpleDialogOption(
                                        child: Text(
                                          "Cancel",
                                          style: TextStyle(color: Colors.red),
                                        ),
                                        onPressed: () {
                                          Get.back();
                                        },
                                      ),
                                    ],
                                  ),
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
                          Icons.camera_enhance_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Color(0XFFFF27B0),
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
              child: MaterialButton(
                height: 20,
                minWidth: 40,
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  Get.to(SignInPage1());
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0XFF0036ff),
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
              child: MaterialButton(
                height: 30,
                minWidth: 40,
                child: Text(
                  "Register Now",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  Get.to(SignUpPage1());
                },
              ),
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
                // ],
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.color_lens_rounded,
                  color: Colors.grey,
                  size: 38,
                ),
                title: const Text(
                  "Dark Theme",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                subtitle: Text(
                  'Better for sighteye and battery life',
                  style: TextStyle(color: Colors.black),
                ),
                trailing: Switch(
                  activeColor: Colors.grey,
                  value: _switchValue,
                  onChanged: (newValue) {
                    setState(() {
                      _switchValue = newValue;
                    });
                    if (Get.isDarkMode) {
                      Get.changeTheme(ThemeData.light());
                    } else
                      Get.changeTheme(ThemeData.dark());
                  },
                ),
              ),
            ),
            SizedBox(height: 10),
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
              child: ListTile(
                  leading: const Icon(
                    Icons.lock,
                    color: Colors.grey,
                    size: 35,
                  ),
                  title: const Text(
                    "Privacy Policy",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Text(
                    'App Terms and Policies',
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () {/* react to the tile being tapped */}),
            ),
            SizedBox(height: 10),
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
              child: ListTile(
                  leading: const Icon(
                    Icons.share,
                    color: Colors.grey,
                    size: 35,
                  ),
                  title: const Text(
                    "Share",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Text(
                    'Share App Now',
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () {
                    Share.share("Example of Share App Text");
                  }),
            ),
            SizedBox(height: 10),
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
              child: ListTile(
                leading: const Icon(
                  Icons.rate_review,
                  color: Colors.grey,
                  size: 35,
                ),
                title: const Text(
                  "Rate Us",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                subtitle: Text(
                  'Leave a Reivew on Goolge play',
                  style: TextStyle(color: Colors.black),
                ),
                onTap: () {/* react to the tile being tapped */},
              ),
            ),
            SizedBox(height: 10),
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
              child: ListTile(
                  leading: const Icon(
                    Icons.more,
                    color: Colors.grey,
                    size: 35,
                  ),
                  title: const Text(
                    "More Apps",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Text(
                    'More Apps from Developer',
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () {
                    // shareFile();
                    /* react to the tile being tapped */
                  }),
            ),
            SizedBox(height: 10),
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
              child: ListTile(
                leading: const Icon(
                  Icons.copyright,
                  color: Colors.grey,
                  size: 35,
                ),
                title: const Text(
                  "About",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                subtitle: Text(
                  'App Info, Build Version, Copyright',
                  style: TextStyle(color: Colors.black),
                ),
                onTap: () {
                  showDialog(
                      builder: (ctx) {
                        return SimpleDialog(
                          backgroundColor: Colors.grey,
                          children: [
                            SimpleDialogOption(
                              child: Image.asset(
                                "images/Vintage Logo.jpg",
                                height: 90,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SimpleDialogOption(
                              child: Text(
                                "Choose From Camera",
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                            SimpleDialogOption(
                              child: Text(
                                "Copyright 2020 pakistan jobs by Pakistan",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                            SimpleDialogOption(
                              child: Text(
                                "All right reserved",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                            MaterialButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: SimpleDialogOption(
                                padding: EdgeInsets.only(left: 210),
                                child: Text(
                                  "Ok",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        );
                      },
                      context: context);
                },
              ),
            ),
            // SignInButton(Buttons.Google, text: "Sign in with Google",
            //     onPressed: () async {
            //   Get.to(googleSignIn());
            // }),
          ],
        ),
      ),
    );
  }
}
