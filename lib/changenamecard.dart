import 'package:flutter/material.dart';
import 'bgimage.dart';

class Changenamecard extends StatelessWidget {
  const Changenamecard({
    Key key,
    @required this.newText,
    @required TextEditingController nameController,
  })  : _nameController = nameController,
        super(key: key);

  final String newText;
  final TextEditingController _nameController;
  @override
  Widget build(BuildContext context) {
    return (Column(
      children: <Widget>[
        Bgimage(),
        SizedBox(
          height: 10,
        ),
        Text(
          newText,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: TextField(
            controller: _nameController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter your name",
                labelText: "Name"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: TextField(
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter your Password",
                labelText: "Gmail Id"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter your Mobile No",
                labelText: "Contact No"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter your mail",
                labelText: "Gmail Id"),
          ),
        ),
      ],
    ));
  }
}
