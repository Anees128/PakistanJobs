// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

// import 'package:get/get.dart';
// import 'package:pakistan_jobs2/GoogleSignIn.dart';
class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  var titleList = [
    "Kpk Jobs",
    "Sindh Jobs",
    "Punjab Jobs",
    "Balochistan Jobs",
    "Fedrel Govt",
    "Gilgit Baltistan",
  ];
  List a = [
    "https://upload.wikimedia.org/wikipedia/commons/c/c9/KP_logo.png",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Coat_of_arms_of_Sindh_Province.svg/1200px-Coat_of_arms_of_Sindh_Province.svg.png",
    "http://i.brecorder.com/wp-content/uploads/2017/07/panjab-govt-1024.jpg",
    "https://findjobz.pk/wp-content/uploads/2020/08/govt-of-balochistan-jobs.png",
    "https://establishment.gov.pk/SiteImage/Setting/BQnvBsrr_400x400.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/b/b1/Gilgit_Baltistan_Government_Logo.jpg",
  ];
  var desList = [
    "Push Yourself,Becuse no one else is going to help you.",
    "Your Limitation- its only your Imagination",
    "Hard work Can Change the life",
    "confident is the most beutifull thing That you possess",
    "A Big Buisniss starts small",
    "Talent win game, Teamwork and intilligence win Championships",
    "Some time its small desicion that can chnge your life forever",
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width * 0.5;
    return Container(
      height: height * .4,
      width: width,
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 200.0,
            width: 350.0,
            child: Carousel(
              dotSize: 4.00,
              dotSpacing: 15.0,
              dotColor: Colors.black,
              indicatorBgPadding: 5.0,
              dotBgColor: Colors.transparent,
              dotVerticalPadding: 5.0,
              dotPosition: DotPosition.bottomRight,
              
              images: [
                Image.asset("images/NAB.jpeg",fit: BoxFit.cover),
                Image.asset("images/POF.jpeg",fit: BoxFit.cover),
                Image.asset("images/PAF.jpeg",fit: BoxFit.cover,),
                Image.asset("images/Courts.jpeg",fit: BoxFit.cover,),
              ],

              showIndicator: false,
              borderRadius: false,
              moveIndicatorFromBottom: 180.0,
              noRadiusForIndicator: true,
              overlayShadow: true,
              overlayShadowColors: Colors.white,
              overlayShadowSize: 0.7,
            ),
          ),
          // Container(
          //   height: height * .3,
          //   width: width * 2,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(30),
          //     image: DecorationImage(
          //        image:AssetImage(
          //             'images/Psc.jpeg'),
          //         fit: BoxFit.cover),
          //   ),
          //   child: Container(
          //     height: height,
          //     width: width,
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.end,
          //       children: <Widget>[
          //         Text(
          //           "Pakistan Jobs",
          //           style: TextStyle(
          //               color: Colors.white,
          //               fontSize: 35,
          //               fontWeight: FontWeight.bold),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          
          Expanded(
            child: ListView.builder(
              itemCount: a.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  // Route
                  onTap: () {
                    print(titleList[index]);
                  },
                  child: Card(
                    child: Row(
                      children: [
                        Container(
                          height: height * .1,
                          width: width * .5,
                          child: Image.network(a[index]),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                titleList[index],
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              SizedBox(
                                height: height * .01,
                                width: width,
                              ),
                              Container(
                                width: width,
                                child: Text(
                                  desList[index],
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
