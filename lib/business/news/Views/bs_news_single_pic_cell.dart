

import 'package:flutter/cupertino.dart';
import 'package:flutterapp/business/news/Models/bs_news_model.dart';

/// 资讯一图
class JFCNewsSinglePicCell  extends StatelessWidget {

  final JFCNewsModel model;

  const JFCNewsSinglePicCell({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _cell();
  }

  ///  TODO 一张图片的未完成
  Widget _cell() {
    return AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 4, 0, 20),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            _image(this.model.imgSrcs[0])
          ],
        ),
      ),
    );
  }

  Widget _image(String url) {
    return FadeInImage.assetNetwork(
        placeholder: "",
        fit: BoxFit.cover,
        image: url
    );
  }


}