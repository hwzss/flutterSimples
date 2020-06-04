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
//  https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1155094793,592129984&fm=26&gp=0.jpg

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title),),
        body: _listView(),
    );
  }

  Widget _listView() {
    return ListView(
      itemExtent: 146,
      padding: EdgeInsets.fromLTRB(20, 4, 20, 24),
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

  /// cell 初始化 subviews
  Widget _collectionCell() {
      return Container(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Row(
              children: <Widget>[
                _image(),
                _textColumn(),
              ],
            ),
          )
      );
  }

  /// 菜谱图片
  Widget _image() {
    return AspectRatio(
        aspectRatio: 1,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: FadeInImage.assetNetwork(
            placeholder: "",
            image: "https://app.huyayue.com/bible/images/001feda77bfea9aacb47df8c26fb7314.jpg",
            fit: BoxFit.cover,),
        )
    );
  }

  /// 菜谱文字描述区域
  Widget _textColumn() {
    return Expanded(
      child:  Padding(
        padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('美味营养成功率高的一道美食减脂餐',
              style: TextStyle(color: Color(0xFF1E192F), fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const Text('点赞293 收藏321',
              style: TextStyle(color: Color(0xFF84838B), fontSize: 12, fontWeight: FontWeight.normal),),
          ],
        ),
      ),
    );
  }
}