import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

List a = [
  "https://upload.wikimedia.org/wikipedia/commons/c/c9/KP_logo.png",
  "https://e7.pngegg.com/pngimages/378/720/png-clipart-government-of-punjab-pakistan-school-education-department-india-pakistan-border-leaf-text.png",
  "https://pbs.twimg.com/profile_images/1132229943969091584/2LTjiBFC_400x400.jpg",
  "https://cdn.pixabay.com/photo/2014/09/14/18/04/dandelion-445228_960_720.jpg",
  "https://cdn.pixabay.com/photo/2016/02/13/12/26/aurora-1197753_960_720.jpg",
  "https://cdn.pixabay.com/photo/2016/11/08/05/26/woman-1807533_960_720.jpg",
  "https://cdn.pixabay.com/photo/2017/12/17/19/08/away-3024773_960_720.jpg",
];

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Flag_of_the_Prime_Minister_of_Pakistan.svg/1200px-Flag_of_the_Prime_Minister_of_Pakistan.svg.png'),
                      fit: BoxFit.fitHeight)),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.2),
                      Colors.black.withOpacity(.2),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "Pakistan Jobs",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (BuildContext ctx, int index) {
                  return Padding(
                    padding: EdgeInsets.all(20),
                    child: Card(
                      shape: Border.all(
                        width: 5,
                      ),elevation: 10,
                   
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Image.network(a[index]),
                          SizedBox(
                            height: 12,
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: a.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
