import 'package:flutter/material.dart';
import 'package:myprofilio2020/constants/constant.dart';

class FloatinButton extends StatefulWidget {
  @override
  _FloatinButtonState createState() => _FloatinButtonState();
}

class _FloatinButtonState extends State<FloatinButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: kPrimaryColor,
      child: Icon(Icons.language),
      onPressed: () {},
    );
  }
}
