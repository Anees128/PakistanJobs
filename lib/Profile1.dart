import 'package:flutter/material.dart';

class ProfilePage1 extends StatefulWidget {
  @override
  _ProfilePage1State createState() => _ProfilePage1State();
}

class _ProfilePage1State extends State<ProfilePage1> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.green,
          ),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage1()),
            );
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
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 3,
                            color: Theme.of(context).scaffoldBackgroundColor),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0, 10))
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://images.pexels.com/photos/3307758/pexels-photo-3307758.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=250",
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
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
                          Icons.edit,
                          color: Colors.white,
                          size: 20,
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
                  leading: const Icon(Icons.color_lens_rounded,size: 35,),
                  title: const Text("Dark Theme"),
                  subtitle: Text('The airplane is only in Act II.'),
                  
                  trailing: Icon(Icons.search_off_rounded),
                  
                  onTap: () {/* react to the tile being tapped */}),
                  ListTile(
                  leading: const Icon(Icons.lock,size: 35,),
                  title: const Text("Privacy Policy"),
                  subtitle: Text('The airplane is only in Act II.'),
                  
                  trailing: Icon(Icons.search_off_rounded),
                  
                  onTap: () {/* react to the tile being tapped */}),
                  ListTile(
                  leading: const Icon(Icons.rate_review,size: 35,),
                  title: const Text("Rate Us"),
                  subtitle: Text('The airplane is only in Act II.'),
                  
                  trailing: Icon(Icons.search_off_rounded),
                  
                  onTap: () {/* react to the tile being tapped */}),
                  ListTile(
                  leading: const Icon(Icons.more,size: 35,),
                  title: const Text("More Apps"),
                  subtitle: Text('The airplane is only in Act II.'),
                  
                  trailing: Icon(Icons.search_off_rounded),
                  
                  onTap: () {/* react to the tile being tapped */}),
                  ListTile(
                  leading: const Icon(Icons.privacy_tip,size: 35,),
                  title: const Text("About"),
                  subtitle: Text('The airplane is only in Act II.'),
                  
                  trailing: Icon(Icons.search_off_rounded),
                  
                  onTap: () {/* react to the tile being tapped */}),
                  
            ],
          ),
        ),
      ),
    );
  }
}
