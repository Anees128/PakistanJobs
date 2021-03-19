import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';
import 'package:pakistan_jobs2/GoogleSignIn.dart';

class Page4 extends StatefulWidget {
  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 51.0, top: 400),
            child: SignInButton(Buttons.Google, text: "Sign in with Google",
                onPressed: () async {
              Get.to(googleSignIn());
            }),
          ),
        ],
      ),
    );
  }
}
