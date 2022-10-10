import 'package:flutter/material.dart';
import 'package:drawerapp/catalogue.dart';

class ItemWidget extends StatelessWidget {
  //const MyWidget({Key key}) : super(key: key);
  final Item item;

  const ItemWidget({
    Key key,
    @required this.item,
  })  : assert(item != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price.toString()}",
          textScaleFactor: 1.2,
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}
