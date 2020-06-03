

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicVc extends StatefulWidget {

  final String title;

  BasicVc({Key key,  this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BasicVcState();

}

class _BasicVcState extends State<BasicVc> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title), backgroundColor: Colors.green,),
    );
  }

}