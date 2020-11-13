import 'package:flutter/material.dart';
import 'package:myprofilio2020/ui/shared/floatingactionbutton.dart';

class TabletHome extends StatefulWidget {
  @override
  _TabletHomeState createState() => _TabletHomeState();
}

class _TabletHomeState extends State<TabletHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Text('flutdev'),
          ],
        ),
      ),
      floatingActionButton: FloatinButton(),
    );
  }
}
