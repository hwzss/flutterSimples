import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// 首页

class HomeVc extends StatefulWidget {

  final String title;

  HomeVc({Key key,  this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeVcState();

}

class _HomeVcState extends State<HomeVc> {

  static const double _searchBarTopPadding = 4.0;
  static const double _searchBarBottomPadding = 20.0;
  /// search bar 期望的高
  static const double _searchBarExpectH = 44.0;
  /// search bar 添加约束后的总高
  static const double _searchBarH = _searchBarExpectH + _searchBarBottomPadding + _searchBarTopPadding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: SizedBox(
                height: _searchBarH,
                child: _searchBar(),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: _searchBarH,
              bottom: 0,
              child: CustomScrollView(
                slivers: <Widget>[
                  _topBtnGridArea(),
                  _listView(),
                ],
              )
            )
          ],
        ),
      )
    );
  }

  /*
        TODO 方法写的过于集中在一个类中
             复用性和可操作性不够
             思考独立出去并用构造函数控制
             下一次会说怎么做，可以先思考
    */
  /// 搜索栏
  Widget _searchBar() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, _searchBarTopPadding, 20, _searchBarBottomPadding),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(_searchBarH * 0.5),
        child: Container(
          decoration: BoxDecoration(color: Color(0xFFe7e7e7)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("icons/tab_home_def@1x.png"),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                child: Text("搜索菜谱/食材", style: TextStyle(color: Color(0xFFC2BFCF), fontSize: 16),),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// 顶部功能按钮 grid view
  Widget _topBtnGridArea() {
     return SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1
        ),

        delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) => _topGridBtn(),
          childCount: 3
        ),
      );
  }

  /// 顶部功能按钮
  Widget _topGridBtn() {
    return Column(
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
          child: Text("夕阳", style: TextStyle(color: Color(0xFF84838B), fontSize: 12),),
        )
      ],
    );
  }

  /// table 列表
  Widget _listView() {
      return SliverPadding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
        sliver: SliverFixedExtentList(
          delegate: SliverChildBuilderDelegate((BuildContext context, int index) => _cell(),
              childCount: 22
          ),
          itemExtent: 300,
        ),
      );

//      return ListView.builder(
//          itemCount: 22,
//          itemExtent: 300,
//          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
//          itemBuilder: (BuildContext context, int index) => _cell());
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