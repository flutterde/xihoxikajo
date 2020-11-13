import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myprofilio2020/constants/constant.dart';
import 'package:myprofilio2020/ui/shared/floatingactionbutton.dart';

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
                  width: MediaQuery.of(context).size.width * 0.23,
                ),
                _navbar(),
              ],
            ),
            Text('flutdev'),
          ],
        ),
      ),
      floatingActionButton: FloatinButton(),
    );
  }

  Widget _navbar() {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'home',
              style: GoogleFonts.pacifico(
                textStyle: TextStyle(
                  fontSize: 25,
                  letterSpacing: .5,
                  // fontStyle: FontStyle.italic,
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.04,
            ),
            Container(
              // color: kPrimaryColor,
              child: FlatButton(
                child: Text(
                  'about',
                  style: GoogleFonts.pacifico(
                    textStyle: TextStyle(
                      fontSize: 25,
                      letterSpacing: .5,
                    ),
                  ),
                ),
                onPressed: () {},
              ),
              decoration: BoxDecoration(
                color: kPrimaryLightColor,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.04,
            ),
            Container(
              // color: kPrimaryColor,
              child: FlatButton(
                child: Text(
                  'contact',
                  style: GoogleFonts.pacifico(
                    textStyle: TextStyle(
                      fontSize: 25,
                      letterSpacing: .5,
                      // fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                onPressed: () {},
              ),
              decoration: BoxDecoration(
                color: kPrimaryLightColor,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
