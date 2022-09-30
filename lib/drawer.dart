import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          //   DrawerHeader(
          //     child: Text(
          //       "Drawer new app",
          //       style: TextStyle(
          //         color: Colors.white,
          //         fontSize: 20,
          //       ),
          //     ),
          //     decoration: BoxDecoration(color: Colors.blueGrey),
          //   ),
          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://media.istockphoto.com/photos/modern-office-black-businesswoman-sitting-at-her-desk-working-on-a-picture-id1365824279?b=1&k=20&m=1365824279&s=170667a&w=0&h=3_YJ2lSlaQhoEgoroJ5E8PzwHFnyEKWZBHc_ZtTb1QY="),
              ),
              // ListTile(
              //   leading: Icon(Icons.person),
              accountName: Text("ShaluAmlani"),
              accountEmail: Text("Shaluamlani99@gmail.com")),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("account"),
            subtitle: Text("personal"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("account"),
            subtitle: Text("shaluamlani99@gmail.com"),
            trailing: Icon(Icons.send),
          )
        ],
      ),
    );
  }
}
