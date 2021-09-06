import 'package:flutter/material.dart';

class NotifContainer extends StatelessWidget {
  final List imgUrl = [
    "assets/bg1.jpg",
    "assets/bg2.jpg",
    "assets/bg3.jpg",
    "assets/bg4.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          color: Color(0xff1c2636),
        ),
        child: ListView.builder(
            itemCount: imgUrl.length,
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.all(18.0),
                child: ListTile(
                  leading: Container(
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(imgUrl[i]), fit: BoxFit.cover),
                    ),
                  ),
                  title: Text(
                    "Jenny Smith commented on your post: ${"Brilliant! :)"}",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  subtitle: Text(
                    "2 hours ago",
                    style: TextStyle(color: Color(0xff5d6270)),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
