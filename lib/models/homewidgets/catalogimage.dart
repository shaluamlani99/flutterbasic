import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogImage extends StatelessWidget {
//Catalogi({Key key}) : super(key: key);
  final String image;

  const CatalogImage({Key key, @required this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .roundedLg
        .p4
        .color(Color.fromARGB(255, 90, 96, 95))
        .make()
        .p12()
        .w40(context);
  }
}
