import 'package:flutter/material.dart';
import 'package:myprofilio2020/ui/home.dart';

import 'constants/constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profilio',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
