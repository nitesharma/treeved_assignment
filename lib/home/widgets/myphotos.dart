import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MyPhotos extends StatelessWidget {
  final List imgUrl = [
    "",
    "https://images.unsplash.com/photo-1630850836572-8b68372947d8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80",
    "https://images.unsplash.com/photo-1630775004628-15ab875b9620?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
    "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=889&q=80",
    "https://images.unsplash.com/photo-1630704236714-b9ae325f1aad?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2NHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
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
                      : CachedNetworkImage(
                          imageUrl: imgUrl[i],
                          fit: BoxFit.cover,
                          width: 120,
                        )),
            );
          },
        ));
  }
}
