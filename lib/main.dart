import 'package:drawerapp/models/productlist.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

//import 'package:themedata/bgimage.dart';
//import 'package:themedata/pages/homepage.dart';

// void main() {
//   runApp(MaterialApp(
//     themeMode: ThemeMode.light,
//     home: Product(),
//     title: "Drawer App",
//     theme: ThemeData(
//         primarySwatch: Colors.blueGrey,
//         fontFamily: GoogleFonts.acme().fontfamily,
//         appBarTheme: AppBarTheme(
//             elevation: 0.0,
//             backgroundColor: Color.fromARGB(255, 67, 115, 155))),
//     darkTheme: ThemeData(brightness: Brightness.light),
//   ));
//}
void main() {
  runApp(MaterialApp(
    title: 'Drawer',
    home: Product(),
    //home: ProductDetails(),
    theme: ThemeData(primarySwatch: Colors.teal),
    // theme: MyTheme.lightTheme(context),
  ));
}
