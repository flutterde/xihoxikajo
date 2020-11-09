import 'package:flutter/material.dart';
import 'package:myprofilio2020/ui/home_ui/desktop_home.dart';
import 'package:myprofilio2020/ui/home_ui/mobile_home.dart';
import 'package:myprofilio2020/ui/home_ui/tablet_home.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          )
        ],
      ),
      body: ScreenTypeLayout(
        mobile: MobileHome(),
        tablet: TabletHome(),
        desktop: DesktopHome(),
        // watch: Container(color: Colors.purple),
      ),
    );
  }
}
