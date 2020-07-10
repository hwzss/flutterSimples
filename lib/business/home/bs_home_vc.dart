import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/business/common/http/http_helper.dart';
import 'package:flutterapp/business/home/Models/bs_home_cook_model.dart';
import 'package:flutterapp/business/home/Views/bs_home_grid_btn.dart';
import 'package:flutterapp/business/home/SubModules/bs_search_vc.dart';

import 'SubModules/bs_home_cook_detail_vc.dart';
import 'Views/bs_search_bar.dart';
import 'Views/home_cook_cell/bs_home_cook_cell.dart';

/// 首页
/// TODO 继续完成详情页 UI
class HomeVc extends StatefulWidget {

  String title;
  List<HomeCookModel> models = List();

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
  void initState() {
    super.initState();
    requestNetWorkData();
  }

  /// 请求网络菜谱数据
  void requestNetWorkData () async {
      BaseHttpResponse response = await httpRequest.getRequest(GetContentsBySubClassId, data: {"id":"257352874", "page":"1"});
      print(response.toString());
      List res = response.responseData;
      for (var value in res) {
        widget.models.add(HomeCookModel.formJson(value));
      }
      setState(() {});
  }

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


  /// 搜索栏
  Widget _searchBar() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, _searchBarTopPadding, 20, _searchBarBottomPadding),
      child: GestureDetector(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(_searchBarH * 0.5),
          child: const HomeSearchBarView(placeholder: "搜索菜谱/食材", imageName: "icons/tab_home_def@1x.png",),
        ),
        onTap: onTapSearchView,
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
    return GridBtn(
      title: "夕阳",
      imageSrc: "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1155094793,592129984&fm=26&gp=0.jpg",
      onBtnClicked: (String title){
        print(title);
        onTapSearchView();
      },
    );
  }

  /// table 列表
  Widget _listView() {
      return SliverPadding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
        sliver: SliverFixedExtentList(
          delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
            return GestureDetector(
              child: HomeCookCell(model: widget.models[index]),
              onTap: () => onTapCellAtIndex(index),
            );
          },
              childCount: widget.models.length
          ),
          itemExtent: 300,
        ),
      );

  }

  void onTapCellAtIndex(int index) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => LTCookRecipeDetailVc()));
  }


  void onTapSearchView() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => SearchVc()));
  }

}