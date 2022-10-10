import 'dart:convert';
import 'package:drawerapp/models/homewidgets/cartpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:drawerapp/catalogue.dart';
import 'package:drawerapp/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'homewidgets/catalogheader.dart';
import 'homewidgets/cataloglist.dart';
import 'itemwidget.dart';

class Product extends StatefulWidget {
  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  //const Product({Key key}) : super(key: key);

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catlogjson = await rootBundle.loadString("assets/files/catalog.json");
    var decodeData = jsonDecode(catlogjson);
    var productData = decodeData["products"];
    CatalogueModel.items = List.from(productData)
        .map<Item>((items) => Item.fromMap(items))
        .toList();
    setState(() {});
    //print(decodeData);
  }

  Widget build(BuildContext context) {
    //final dummylist = List.generate(40, (index) => CatalogueModel.items[0]);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CartPage()),
          );
        },
        backgroundColor: Color.fromARGB(255, 6, 90, 101),
        child: Icon(CupertinoIcons.cart),
      ),
      //backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        child: Container(
          padding: Vx.m24,
          child: Column(
            children: [
              CatalogHeader(),
              if (CatalogueModel.items != null &&
                  CatalogueModel.items.isNotEmpty)
                CatalogList().expand()
              else
                Center(
                    child:
                        CircularProgressIndicator().centered().expand().py16()),
            ],
          ),
        ),
      ),
      // appBar: AppBar(
      //     title: Text("catalogue list"), backgroundColor: Colors.lightBlue),
      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: (CatalogueModel.items != null && CatalogueModel.items.isNotEmpty)
      //       ? ListView.builder(
      //           itemCount: CatalogueModel.items.length,
      //           itemBuilder: (context, index) {
      //             return ItemWidget(
      //               item: CatalogueModel.items[index],
      //             );
      //           },
      //         )
      //       : Center(
      //           child: CircularProgressIndicator(),
      //         ),
      // ),
      drawer: Mydrawer(),
    );
  }
}
