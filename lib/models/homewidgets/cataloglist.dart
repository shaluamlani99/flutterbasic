// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:drawerapp/homedetails.dart';
import 'package:drawerapp/models/cart.dart';

import '/catalogue.dart';
import 'package:drawerapp/catalogue.dart';
import '../productlist.dart';
import 'Addtocart.dart';
import 'catalogimage.dart';

class CatalogList extends StatelessWidget {
//CatalogList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogueModel.items.length,
        itemBuilder: (context, index) {
          final catalog = CatalogueModel.items[index];
          return InkWell(
              onTap: (() => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomeDetails(catalog: catalog)))),
              child: CatalogItem(catalog: catalog));
        });
  }
}

class CatalogItem extends StatelessWidget {
  //CatalogItem({Key key}) : super(key: key);
  final Item catalog;

  const CatalogItem({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
              tag: Key(catalog.id.toString()),
              child: CatalogImage(image: catalog.image)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                catalog.name.text.lg.bold.make(),
                catalog.desc.text
                    .textStyle(context.captionStyle)
                    .lg
                    .color(Color.fromARGB(255, 7, 73, 255))
                    .bold
                    .make(),
                10.heightBox,
                ButtonBar(
                  alignment: MainAxisAlignment.spaceAround,
                  buttonPadding: EdgeInsets.zero,
                  children: [
                    "\$${catalog.price}".text.lg.bold.make(),
                    AddtoCart(catalog: catalog),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ).white.roundedLg.square(150).make().py12();
  }
}
