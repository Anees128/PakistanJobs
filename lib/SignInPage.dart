import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage1 extends StatefulWidget {
  @override
  LoginPage1State createState() => LoginPage1State();
}

class LoginPage1State extends State<LoginPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(38.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 90,
              ),
              Text("Welcome"),
              Text(
                "SignIn",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 40.0,
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
                  color: Color(0XFFEFF3F6),
                  borderRadius: BorderRadius.circular(100.0),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.1),
                        offset: Offset(6, 2),
                        blurRadius: 6.0,
                        spreadRadius: 3.0),
                    BoxShadow(
                        color: Color.fromRGBO(255, 255, 255, 0.9),
                        offset: Offset(-6, -2),
                        blurRadius: 6.0,
                        spreadRadius: 3.0)
                  ],
                ),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please Enter email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      border: InputBorder.none,
                      hintText: "Please Enter Email"),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Password",
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
                    color: Color(0XFFEFF3F6),
                    borderRadius: BorderRadius.circular(100.0),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.1),
                          offset: Offset(6, 2),
                          blurRadius: 4.0,
                          spreadRadius: 3.0),
                      BoxShadow(
                          color: Color.fromRGBO(255, 255, 255, 0.9),
                          offset: Offset(-6, -2),
                          blurRadius: 6.0,
                          spreadRadius: 3.0)
                    ]),
                child: TextFormField(
                  obscureText: true,
                  autovalidateMode: AutovalidateMode.always,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please Enter password';
                    } else if (value.length < 8) {
                      return 'Pass must be at least 8 characters';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    hintText: "Enter Your PassWord",
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Forgot Password ?",
                style: TextStyle(color: Colors.red),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      child: Center(
                        child: Text(
                          "Log In",
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
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
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
