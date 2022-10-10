import 'package:drawerapp/drawer.dart';
import 'package:flutter/material.dart';
import 'bgimage.dart';

class Changenamecard extends StatefulWidget {
  Changenamecard({
    Key key,
    @required this.newText,
    @required TextEditingController nameController,
  })  : _nameController = nameController,
        super(key: key);

  final String newText;
  bool changeButton = false;
  //final _formkey = GlobalKey<FormState>();
  final TextEditingController _nameController;

  @override
  State<Changenamecard> createState() => _ChangenamecardState();
}

class _ChangenamecardState extends State<Changenamecard> {
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      // key: _formkey,
      child: (Column(
        children: <Widget>[
          Bgimage(),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.newText,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          // Padding(
          //   padding: const EdgeInsets.all(6.0),
          //   child: TextField(
          //     //controller: _nameController,
          //     keyboardType: TextInputType.text,
          //     decoration: InputDecoration(
          //         border: OutlineInputBorder(),
          //         hintText: "Enter your name",
          //         labelText: "Name"),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(6.0),
          //   child: TextField(
          //     keyboardType: TextInputType.text,
          //     obscureText: true,
          //     decoration: InputDecoration(
          //         border: OutlineInputBorder(),
          //         hintText: "Enter your Password",
          //         labelText: "Password"),
          //   ),
          // ),
          Material(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(changeButton ? 80 : 100),
            child: InkWell(
              //splashColor: Colors.red,
              onTap: () async {
                setState(() {
                  changeButton = true;
                });
                await Future.delayed(Duration(seconds: 1));
                await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Mydrawer()),
                );
                setState(
                  () {
                    changeButton = false;
                  },
                );
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: changeButton ? 80 : 100,
                height: 70,
                alignment: Alignment.center,
                color: Colors.grey,
                child: changeButton
                    ? Icon(
                        Icons.done,
                        color: Colors.green,
                        size: 40,
                      )
                    : Text(
                        "login",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                // decoration: BoxDecoration(
                //   shape: changeButton ? BoxShape.circle : BoxShape.rectangle,
                //   color: Colors.deepOrange,
                // borderRadius: BorderRadius.circular(
                //   changeButton ? 80 : 100,
              ),
            ),
          ),
          // ),

          // Padding(
          //   padding: const EdgeInsets.all(6.0),
          //   child: TextField(
          //     keyboardType: TextInputType.emailAddress,
          //     decoration: InputDecoration(
          //         border: OutlineInputBorder(),
          //         hintText: "Enter your Mobile No",
          //         labelText: "Contact No"),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(6.0),
          //   child: TextField(
          //     keyboardType: TextInputType.emailAddress,
          //     decoration: InputDecoration(
          //         border: OutlineInputBorder(),
          //         hintText: "Enter your mail",
          //         labelText: "Gmail Id"),
          //   ),
          // ),
        ],
      )),
    );
  }
}
