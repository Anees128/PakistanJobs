import 'package:flutter/material.dart';
import 'package:videos_player/model/video.model.dart';
import 'package:videos_player/videos_player.dart';
import 'package:get/get.dart';
class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}
List<Map<String, Object>> _list = [
    {
      'id': "2",
      'name': "Elephant Dream",
      'videoUrl':
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
      'thumbnailUrl':
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ElephantsDream.jpg",
    },
    {
      'id': "3",
      'name': "Big Buck Bunny",
      'videoUrl':
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
      'thumbnailUrl':
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/BigBuckBunny.jpg",
    },
    {
      'id': "4",
      'name': "For Bigger Blazes",
      'videoUrl':
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
      'thumbnailUrl':
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ForBiggerBlazes.jpg"
    }
  ];

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width ;
    return Container(
      color: Colors.red,
      height: height,
      width: width,
      child: Scaffold(
        body: ListView.builder(
          itemCount: _list.length,
          itemBuilder: (BuildContext ctx, int index) {
            return VideosPlayer(
              networkVideos: [
                NetworkVideo(
                    id: _list[index]['id'],
                    name: _list[index]['name'],
                    videoUrl: _list[index]['videoUrl'],
                    thumbnailUrl: _list[index]['thumbnailUrl'])
              ],
            );
          },
        ),
      ),
    );
  }
}
