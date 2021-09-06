import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NotifContainer extends StatelessWidget {
  final List imgUrl = [
    "https://images.unsplash.com/photo-1630850836572-8b68372947d8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80",
    "https://images.unsplash.com/photo-1630775004628-15ab875b9620?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
    "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=889&q=80",
    "https://images.unsplash.com/photo-1630704236714-b9ae325f1aad?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2NHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
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
                          image: CachedNetworkImageProvider(imgUrl[i]),
                          fit: BoxFit.cover),
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
