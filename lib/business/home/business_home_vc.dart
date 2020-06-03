import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// 首页
class HomeVc extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _HomeVcState();
}

class _HomeVcState extends State<HomeVc> {

  @override
  Widget build(BuildContext context) {
    throw Scaffold(
      appBar: AppBar(title: Text("白噢题"), backgroundColor: Colors.green,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              'NO!! adsfasdf',
            ),
            Text(
              'hahh',
            ),
          ],
        ),
      ),
    );
  }

}