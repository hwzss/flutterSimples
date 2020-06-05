import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// 首页

class NewsVc extends StatefulWidget {

  final String title;

  NewsVc({Key key,  this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _NewsVcState();

}

class _NewsVcState extends State<NewsVc> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title), backgroundColor: Colors.green,),
        body: _listView()
    );
  }

  Widget _listView() {
    return ListView.builder(
        itemCount: 22,
        itemExtent: 300,
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        itemBuilder: (BuildContext context, int index) {
          return _cell();
        });
  }

  Widget _cell() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 4, 0, 20),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          _image()
        ],
      ),
    );
  }


  Widget _image() {
    return AspectRatio(
      aspectRatio: 1/2,
      child: FadeInImage.assetNetwork(
          placeholder: "",
          fit: BoxFit.cover,
          image: "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1155094793,592129984&fm=26&gp=0.jpg"
      ),
    );

  }

}