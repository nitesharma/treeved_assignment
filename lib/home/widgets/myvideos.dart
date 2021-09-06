import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MyVideos extends StatelessWidget {
  final List imgUrl = [
    "https://images.unsplash.com/photo-1630678915432-8f73b105e666?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80",
    "https://images.unsplash.com/photo-1606787619248-f301830a5a57?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1630737366822-30e8442986ad?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80",
    "https://images.unsplash.com/photo-1630621655812-88e992e888fa?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80"
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
                  child: CachedNetworkImage(
                    imageUrl: imgUrl[i],
                    fit: BoxFit.cover,
                    width: 150,
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
