import 'package:flutter/material.dart';

class FloatinButton extends StatefulWidget {
  @override
  _FloatinButtonState createState() => _FloatinButtonState();
}

class _FloatinButtonState extends State<FloatinButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.home),
      onPressed: () {},
    );
  }
}
