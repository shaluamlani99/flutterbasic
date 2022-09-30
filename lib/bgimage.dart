import 'package:flutter/material.dart';

class Bgimage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/image/loginn.jpg',
      fit: BoxFit.contain,
      // width: 380,
      // height: 250,
    );
  }
}
