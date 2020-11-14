import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myprofilio2020/ui/shared/floatingactionbutton.dart';
import 'package:url_launcher/url_launcher.dart';

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
      appBar: AppBar(
        title: Text(
          'flutdev',
          style: GoogleFonts.macondoSwashCaps(
            textStyle: TextStyle(
              fontSize: 25,
              letterSpacing: .5,
              // fontStyle: FontStyle.italic,
            ),
          ),
        ),
        centerTitle: true,
      ),
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
            margin: EdgeInsets.all(7),
            height: MediaQuery.of(context).size.width * 0.07,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Pages..'),
                IconButton(
                  color: Colors.grey,
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          _sizebox002(0.02),
          Container(
            height: MediaQuery.of(context).size.width * 0.07,
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
          _sizebox002(0.02),
          Container(
            height: MediaQuery.of(context).size.width * 0.07,
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
          _sizebox002(0.02),
          Container(
            height: MediaQuery.of(context).size.width * 0.07,
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
          _sizebox002(0.04),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Image.asset('assets/images/icons/001-facebook.png'),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset('assets/images/icons/002-instagram.png'),
                  onPressed: () => _launchURL,
                ),
                IconButton(
                  icon: Image.asset('assets/images/icons/003-youtube.png'),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset('assets/images/icons/004-twitter.png'),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset('assets/images/icons/005-linkedin.png'),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _sizebox002(double value1) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * value1,
    );
  }

  _launchURL() async {
    const url = 'https://www.google.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('no');
    }
  }
}
