import 'package:flutter/material.dart';

class Bgimage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/image/loginn.jpg',
      fit: BoxFit.cover,
    );
  }
}
