import 'package:flutter/material.dart';
import 'package:myprofilio2020/ui/shared/floatingactionbutton.dart';

class MobileHome extends StatefulWidget {
  @override
  _MobileHomeState createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: _drawerContent(),
      ),
      appBar: AppBar(),
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

  Widget _drawerContent() {
    return Padding(
      padding: EdgeInsets.all(7),
      child: Column(
        children: [
          Container(
            child: FlatButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.home_outlined),
                  Text('HOME'),
                ],
              ),
              onPressed: () {},
            ),
          ),
          Container(
            child: FlatButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.info_outline),
                  Text('ABOUT'),
                ],
              ),
              onPressed: () {},
            ),
          ),
          Container(
            child: FlatButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.email_outlined),
                  Text('CONTACT'),
                ],
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
