import 'package:flutter/material.dart';

class MyVideos extends StatelessWidget {
  final List imgUrl = [
    "assets/v1.jpg",
    "assets/v2.jpg",
    "assets/v3.jpg",
    "assets/v4.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        itemCount: imgUrl.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    imgUrl[i],
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 60,
                  bottom: 15,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Icon(Icons.play_arrow),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
