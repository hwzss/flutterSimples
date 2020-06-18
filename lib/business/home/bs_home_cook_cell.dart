import 'package:flutter/cupertino.dart';

class HomeCookCell extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
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
      "碧水连天天连水, 春风扬柳柳扬风",
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
                  image: "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1155094793,592129984&fm=26&gp=0.jpg"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
            child: Text("哈哈哈😂",
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
        image: "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1155094793,592129984&fm=26&gp=0.jpg"
    );
  }

}