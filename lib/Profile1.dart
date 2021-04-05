import 'package:flutter/material.dart';
import 'package:pakistan_jobs2/SignUpPage.dart';
import 'package:share/share.dart';

import 'MyHomePage1.dart';
import 'package:get/get.dart';

class ProfilePage1 extends StatefulWidget {
  @override
  _ProfilePage1State createState() => _ProfilePage1State();
}

class _ProfilePage1State extends State<ProfilePage1> {
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
          MaterialButton(
            child: Text("Log out"),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 10, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Center(
                child: Stack(
                  children: [
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 200.0),
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
                              image: NetworkImage(
                                "https://image.shutterstock.com/image-vector/profile-icon-260nw-432206377.jpg",
                              ),
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        Get.to(
                          Registration1(),
                        );
                      },
                    ),
                    //this is for upload image
                    Positioned(
                      bottom: 0,
                      right: 200,
                      child: InkWell(
                        onTap: () {
                          Get.to(
                            Registration1(),
                          );
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
              Text("ANees"),
              SizedBox(
                height: 3,
              ),
              Text(
                "aneeskhanofficial4@gmail.com",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 25,
              ),
              ListTile(
                leading: const Icon(
                  Icons.color_lens_rounded,
                  size: 38,
                ),
                title: const Text(
                  "Dark Theme",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Better for sighteye and battery life'),
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
              ListTile(
                  leading: const Icon(
                    Icons.lock,
                    size: 35,
                  ),
                  title: const Text(
                    "Privacy Policy",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('App Terms and Policies'),
                  onTap: () {/* react to the tile being tapped */}),
              ListTile(
                  leading: const Icon(
                    Icons.share,
                    size: 35,
                  ),
                  title: const Text(
                    "Share",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Share App Now'),
                  onTap: () {
                    Share.share("Example of Share App Text");
                  }),
              ListTile(
                  leading: const Icon(
                    Icons.rate_review,
                    size: 35,
                  ),
                  title: const Text(
                    "Rate Us",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Leave a Reivew on Goolge play'),
                  onTap: () {/* react to the tile being tapped */}),
              ListTile(
                  leading: const Icon(
                    Icons.more,
                    size: 35,
                  ),
                  title: const Text(
                    "More Apps",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('More Apps from Developer'),
                  onTap: () {
                    // shareFile();
                    /* react to the tile being tapped */
                  }),
              ListTile(
                  leading: const Icon(
                    Icons.copyright,
                    size: 35,
                  ),
                  title: const Text(
                    "About",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('App Info, Build Version, Copyright'),
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
                  }),
              // SignInButton(Buttons.Google, text: "Sign in with Google",
              //     onPressed: () async {
              //   Get.to(googleSignIn());
              // }),
            ],
          ),
        ),
      ),
    );
  }
}
