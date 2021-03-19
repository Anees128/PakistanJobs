import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}
var titleList = [
    "Police Jobs",
    "Jobs in Sindh",
    "Wapda",
    "Pakistan Navi",
    "PAF",
    "PSC",
    "KPK",
    "Private",
    "POF",
    "FPSC",
    "Nescom",
    "Pakistan Army",
    "Jobs in Fedral",
    "css -competition",
    "PPSC Lectures",
    "Intelligence MCQs",
    "Result",
    "Admision",
    "Internship",
    "ASF",
    "Balochistan",
    
  ];

final List<String> _imgList = [
  'images/Police Jobs.jpeg',
  'images/Jobs in Sindh.jpeg',
  'images/PPSC.jpeg',
  'images/Pakistan Navy.jpeg',
  'images/PAF.jpeg',
  'images/PPSC.jpeg',
  'images/KPK.jpeg',
  'images/Private Jobs.jpeg',
  'images/POF.jpeg',
  'images/PPSC.jpeg',
  'images/POF.jpeg',
  'images/Pakistan Army.jpeg',
  'images/PPSC.jpeg',
  'images/CSS Competitive Examination.jpeg',
  'images/PPSC Lectures.jpeg',
  "images/images/POF.jpeg",
  "images/Results.jpeg",
  "images/Admissions Open.jpeg",
  "images/Internship.jpeg",
  "images/ASF.jpeg",
  "images/Balochistan Jobs.jpeg",


];

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SafeArea(
          child: Container(
            height: height,
            width: width * 2,
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: GridView.builder(
                    itemCount: _imgList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 9/11,
                    ),
                    itemBuilder: (context,index) => Column(
                            children: [
                              Card(
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(_imgList[index]), fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Text(titleList[index]),


                            ],
                          ),
                        )
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
