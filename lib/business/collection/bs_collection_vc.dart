import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/basic/basic_vc.dart';

/// 收藏列表界面
class CollectionVc extends BasicVc {

  CollectionVc(String title) : super(title: title);

  @override
  State<StatefulWidget> createState() {
    return _CollectionVcState();
  }

}

class _CollectionVcState extends State<CollectionVc> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title),),
        body: _listView(),
    );
  }

  Widget _listView() {
    return ListView(
      itemExtent: 120,
      children: <Widget>[
        _collectionCell(),
        _collectionCell(),
        _collectionCell(),
        _collectionCell(),
        _collectionCell(),
        _collectionCell(),
        _collectionCell(),
      ],
    );
  }


  Widget _collectionCell() {
      return Row(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 3/2,
            child: FadeInImage.assetNetwork(
                placeholder: "",
                image: "https://app.huyayue.com/bible/images/001feda77bfea9aacb47df8c26fb7314.jpg"),
          ),
          Column(
            children: <Widget>[
              const Text('I\'m dedicating every day to you'),
              const Text('I\'m dedicating every day to you'),
            ],
          ),
        ],
      );
  }
}