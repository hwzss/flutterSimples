import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/business/home/Models/bs_home_cook_model.dart';

class HomeCookCell extends StatelessWidget {

  final HomeCookModel model;

  const HomeCookCell({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _cell();
  }

  /// 大 cell
  Widget _cell() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 4, 0, 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            _image(),
            Positioned(
                left: 0,
                top: 0,
                right: 0,
                child: _cellTopArea()
            ),
          ],
        ),
      ),
    );
  }

  /// 顶部区域
  Widget _cellTopArea() {
    return Container(
      decoration: BoxDecoration(
        /// 从上到下的渐变，可见 https://www.jianshu.com/p/d29eab4e933c
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [Color(0x66000000), Color(0x00000000)]
          )
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 24, 20, 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _titleText(),
            _userInfoRow()
          ],
        ),
      ),
    );
  }

  /// 主标题
  Widget _titleText() {
    return Text(
      this.model.title,
      style: TextStyle(
        fontSize: 22,
        color: Color(0xFFFFFFFF),
        fontWeight: FontWeight.bold,
      ),
      maxLines: 1,
    );
  }

  /// 用户头像和昵称
  Widget _userInfoRow() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 28,
            height: 28,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: FadeInImage.assetNetwork(
                  placeholder: "",
                  fit: BoxFit.cover,
                  image: this.model.uImageSrc
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
            child: Text(this.model.uNickName,
              style: TextStyle(fontSize: 12, color: Color(0xFFFFFFFF)),
            ),
          )
        ],
      ),
    );
  }

  /// 背景图
  Widget _image() {
    return FadeInImage.assetNetwork(
        placeholder: "",
        fit: BoxFit.cover,
        image: this.model.imageScr
    );
  }


}