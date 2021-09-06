import 'package:flutter/material.dart';
import 'package:treeved/home/widgets/appbar.dart';
import 'package:treeved/home/widgets/categories.dart';
import 'package:treeved/home/widgets/myphotos.dart';
import 'package:treeved/home/widgets/myvideos.dart';
import 'package:treeved/home/widgets/photos_container.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffefffe),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CustomAppbar(),
              "Feed".text.size(35).bold.make(),
              10.heightBox,
              "Sed ut umnet dolar".text.size(20).make(),
              25.heightBox,
              PhotosContainer(),
              25.heightBox,
              Categories(),
              20.heightBox,
              "My Photos".text.size(25).bold.make(),
              15.heightBox,
              MyPhotos(),
              20.heightBox,
              "My Videos".text.size(25).bold.make(),
              15.heightBox,
              MyVideos(),
            ],
          ),
        ),
      ),
    );
  }
}
