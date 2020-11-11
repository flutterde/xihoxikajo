import 'dart:ui';

import 'package:flutter/material.dart';

class DesktopHome extends StatefulWidget {
  @override
  _DesktopHomeState createState() => _DesktopHomeState();
}

class _DesktopHomeState extends State<DesktopHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/logo1.png',
                      height: 150,
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.25,
                ),
                _navbar(),
              ],
            ),
            Text('flutdev'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.language),
        onPressed: () {},
      ),
    );
  }

  Widget _navbar() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'home',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          ),
          Text(
            'home',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          ),
          Text(
            'home',
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
