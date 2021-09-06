import 'package:flutter/material.dart';

class MyPhotos extends StatelessWidget {
  final List imgUrl = [
    "",
    "assets/bg1.jpg",
    "assets/bg2.jpg",
    "assets/bg3.jpg",
    "assets/bg4.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 130,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: imgUrl.length,
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: i == 0
                    ? Container(
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xfff7f6f7)),
                        child: Center(
                          child: Icon(Icons.add),
                        ),
                      )
                    : Image.asset(
                        imgUrl[i],
                        width: 120,
                        fit: BoxFit.cover,
                      ),
              ),
            );
          },
        ));
  }
}
