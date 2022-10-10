import 'package:drawerapp/catalogue.dart';
import 'package:drawerapp/models/homewidgets/Addtocart.dart';
import 'package:drawerapp/models/homewidgets/catalogimage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetails extends StatelessWidget {
  final Item catalog;

  const HomeDetails({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
      ),
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceAround,
        buttonPadding: EdgeInsets.zero,
        children: [
          "\$${catalog.price}".text.xl4.red500.bold.make(),
          AddtoCart(catalog: catalog)
              // ElevatedButton(
              //         onPressed: () {},
              //         style: ButtonStyle(
              //             backgroundColor: MaterialStateProperty.all(
              //                 Color.fromARGB(95, 64, 53, 53)),
              //             //mouseCursor: Color:Colors.black12,
              //             shape: MaterialStateProperty.all(StadiumBorder())),
              //         child: "Add to Cart".text.bold.lg.make())
              .wh(120, 50),
        ],
      ).p4(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(catalog.image),
              ),
              Expanded(
                  child: VxArc(
                height: 30,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                    width: context.screenWidth,
                    color: Color.fromARGB(57, 245, 241, 241),
                    child: Column(
                      children: [
                        catalog.name.text.lg.bold.xl4.make().py2(),
                        catalog.desc.text
                            .textStyle(context.captionStyle)
                            .lg
                            .bold
                            .lg
                            .make(),
                        10.heightBox,
                        "Duo consetetur sit nonumy ipsum et, amet vero vero dolores sit sit ea consetetur, duo"
                            .text
                            .textStyle(context.captionStyle)
                            .center
                            .xl
                            .make(),
                      ],
                    ).py32()),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
