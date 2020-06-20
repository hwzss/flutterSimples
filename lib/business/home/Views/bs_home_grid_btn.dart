import 'package:flutter/cupertino.dart';

/// 首页功能按钮
class GridBtn extends StatelessWidget {

  final String title;
  final String imageSrc;
  final Function(String title) onBtnClicked;

  const GridBtn({Key key, this.title, this.imageSrc, this.onBtnClicked}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 50, height: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular((25)),
              child: _image(),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 6, 0, 0),
            child: Text(this.title, style: TextStyle(color: Color(0xFF84838B), fontSize: 12),),
          )
        ],
      ),
      onTap: (){this.onBtnClicked(this.title);},
    );
  }

  /// 背景图
  Widget _image() {
    return FadeInImage.assetNetwork(
        placeholder: "",
        fit: BoxFit.cover,
        image: this.imageSrc
    );
  }

}

