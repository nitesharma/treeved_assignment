import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class PhotosContainer extends StatelessWidget {
  const PhotosContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              height: size.height * 0.15,
              width: size.width * 0.28,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xfffead00),
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    "24".text.size(30).white.make(),
                    "Photos".text.size(18).white.make(),
                  ],
                ),
              )),
          Container(
              height: size.height * 0.15,
              width: size.width * 0.28,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xfff7f6f7)),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "48",
                      style: TextStyle(
                        color: Color(0xffe95d4b),
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      "Articles",
                      style: TextStyle(
                        color: Color(0xff323056),
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              )),
          Container(
              height: size.height * 0.15,
              width: size.width * 0.28,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xfff7f6f7)),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '22k',
                      style: TextStyle(
                        color: Color(0xff7c7cdc),
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(
                        color: Color(0xff323056),
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
