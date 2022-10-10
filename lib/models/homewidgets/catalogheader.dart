import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  //const MyWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "catalog app".text.xl4.bold.color(Colors.blueGrey).make(),
        "Trending Products".text.xl2.color(Colors.blueGrey).make(),
      ],
    );
  }
}
