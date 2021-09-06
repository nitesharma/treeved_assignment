import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:treeved/Notifications/widgets/notif_container.dart';
import 'package:velocity_x/velocity_x.dart';

import 'widgets/my_appbar.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffefffe),
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              20.heightBox,

              MyAppbar(),

              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Notifications',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff12114f),
                      ),
                    ),
                    20.widthBox,
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Color(0xfffee9c5),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          "12",
                          style:
                              TextStyle(color: Color(0xfff5ce82), fontSize: 20),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              25.heightBox,
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xfff7f6f7)),
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        prefixIcon: Icon(
                          CupertinoIcons.search,
                          size: 30,
                          color: Colors.black,
                        ),
                        hintText: "Search for name",
                        hintStyle: TextStyle(color: Colors.grey)),
                  ),
                ),
              ),
              40.heightBox,
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Row(
                  children: [
                    Text(
                      "TODAY",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff252551),
                      ),
                    ),
                    40.widthBox,
                    Text(
                      "LAST WEEK",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              15.heightBox,
              NotifContainer()

              //
            ],
          ),
        ),
      ),
    );
  }
}
