import 'package:drawerapp/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  //const MyWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white60,
          title: "Cart"
              .text
              .color(Color.fromARGB(255, 74, 68, 255))
              .bold
              .xl3
              .make(),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            CartList().p32().expand(),
            Divider(),
            CartTotal(),
          ],
        )
        //child: Text("heyy"),
        );
  }
}

class CartTotal extends StatelessWidget {
  //const MyWidget({Key key}) : super(key: key);
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            "\$${_cart.totalPrice}".text.xl5.make(),
            30.widthBox,
            ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: "Buying not supported yet".text.make(),
                        ),
                      );
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 51, 44, 51))),
                    child: "Buy".text.white.make())
                .w24(context)
          ],
        ));
  }
}

class CartList extends StatefulWidget {
  //const MyWidget({Key key}) : super(key: key);

  @override
  State<CartList> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CartList> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return _cart.items?.isEmpty
        ? "Nothing to show".text.xl3.makeCentered()
        : ListView.builder(
            itemCount: _cart.items?.length,
            itemBuilder: ((context, index) => ListTile(
                  leading: Icon(Icons.done),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.remove_circle_outline,
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: "Sorry You Can Not Delete Any Item "
                              .text
                              .xl2
                              .make(),
                        ),
                      );
                      // _cart.remove(_cart.items[index]);

                      setState(() {});
                    },
                  ),
                  title: _cart.items[index].name.text.make(),
                )),
          );
  }
}
