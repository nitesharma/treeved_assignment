import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List categ = ['CHAT', 'FEATURED', 'POPULAR', 'FOllOWER'];
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      child: ListView.builder(
        itemCount: categ.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int i) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selected = i;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: selected == i ? Color(0xfffee9c5) : Colors.white,
                ),
                child: Center(
                  child: Text(
                    categ[i],
                    style: TextStyle(
                      fontSize: 18,
                      color: selected == i ? Color(0xfff4b656) : Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
