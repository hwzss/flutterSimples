/*
    TODO cupertino 是 iOS 风格的一套组件
         现在讲的都是 material 安卓风格里的
         两个不需要一起引用
         其它页面一样不需要一起引用
*/

//import 'package:flutter/cupertino.dart';
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