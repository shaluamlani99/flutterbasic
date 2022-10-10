import 'package:flutter/material.dart';

import 'changenamecard.dart';
import './drawer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  var Mytext = "change me";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //fontFamily: GoogleFonts.acme().fontfamily,
        title: Text("Drawer App"),
        //backgroundColor: Color.fromARGB(255, 73, 86, 93),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 123, 98, 98)),
      ),

      //alignment: Alignment.center,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Card(
            //shape: ShapeBorder(4),
            //color: Colors.lightGreenAccent,
            child: Changenamecard(
                newText: Mytext, nameController: _nameController),
            //Changenamecard(),
            //Theme(),
            // child: Text(

            //   " Create New Drawer App",
            //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            //textAlign: Align.
          ),
        ),
      ),
      drawer: Mydrawer(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Mytext = _nameController.text;
            setState(() {});
          },
          child: Icon(Icons.refresh)),
    );
  }
}
