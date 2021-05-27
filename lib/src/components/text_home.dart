import 'package:flutter/material.dart';

class TextHome extends StatelessWidget {
  final String text;
  final Color color;

  TextHome(this.text, {this.color});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontSize: 16,
            color: this.color ?? Colors.grey.shade400,
            fontWeight: FontWeight.bold));
  }
}
