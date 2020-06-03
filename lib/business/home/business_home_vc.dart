import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// 首页
class HomeVc extends StatefulWidget {

  String title;

  HomeVc({Key key,  this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeVcState();
}

class _HomeVcState extends State<HomeVc> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title), backgroundColor: Colors.green,),
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