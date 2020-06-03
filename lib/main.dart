import 'package:flutter/material.dart';
import 'package:flutterapp/business/root/root_vc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    var themeData = ThemeData(primarySwatch: Colors.blue, visualDensity: VisualDensity.adaptivePlatformDensity);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeData,
      home: RootVc(),
    );
  }
}
