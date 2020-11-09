import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myprofilio2020/ui/home.dart';

import 'constants/constant.dart';

void main() {
  runApp(
    DevicePreview(
      // enabled: !kReleaseMode,
      enabled: false,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.of(context).locale, // <--- /!\ Add the locale
      builder: DevicePreview.appBuilder,
      title: 'Profolio',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
