import 'package:flutter/material.dart';

import 'homepage.dart';

//import 'package:themedata/bgimage.dart';
//import 'package:themedata/pages/homepage.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    title: "Drawer App",
    theme: ThemeData(
      primarySwatch: Colors.blueGrey,
    ),
  ));
}
