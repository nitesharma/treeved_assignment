import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme:
              GoogleFonts.notoSansTextTheme(Theme.of(context).textTheme)),
      home: HomePage(),
    );
  }
}
