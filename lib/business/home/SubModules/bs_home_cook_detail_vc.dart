

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/business/home/Models/bs_home_cook_model.dart';
import 'package:flutterapp/common/Constants/ui_constants.dart';

/// 菜谱详情
class LTCookRecipeDetailVc extends StatefulWidget {

  final HomeCookModel model;

  const LTCookRecipeDetailVc({Key key, this.model}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LTCookRecipeDetailVcState();
  }

}

class _LTCookRecipeDetailVcState extends State<LTCookRecipeDetailVc> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: recipeDetailInfoWidget(),
    );
  }

  Widget imageBackgroudWidget() {
    return FadeInImage.assetNetwork(
        placeholder: "",
        fit: BoxFit.cover,
        image: widget.model.imageScr
    );
  }

  Widget recipeDetailInfoWidget() {
     return Expanded(
       child: ListView.builder(itemBuilder: (BuildContext context, int index){
         if(index == 0) {
           return cellClearTop();
         }
         return cellInfo();
       },
         itemCount: 2,
       ),
     );
  }

  /// 空白占位
  Widget cellClearTop() {
    return SizedBox(
      height: 200,
      width: 300,
      child: Container(
        decoration: BoxDecoration( color: Colors.red),
      ),
    );
  }

  /// 菜谱信息
  Widget cellInfo() {
    return  Container(
      decoration: BoxDecoration( color: Colors.green),
      child: SizedBox(
        width: kScreenWidth,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              titleInfoCloumn(),
              setupsBackgroudWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget setupsBackgroudWidget() {
      return  Expanded(
        child: Container(
          decoration: BoxDecoration(color: Color(0xFFF5F5F7)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("需要材料", style: TextStyle(color: Color(0xFF1E192F), fontSize: 18),),
              setupsWidgetColumn()
            ],
          ),
        ),
      );
  }

  Widget setupsWidgetColumn() {
    List<Widget> setupWidgets = new List();
    for (int i = 0; i < 11; i++) {
      setupWidgets.add(setupsWidget("步骤一", "1"));
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children:setupWidgets
    );
  }

  Widget setupsWidget(String title, String subTitle) {
    return Text(title, style: TextStyle(color: Color(0xFF84838B), fontSize: 18),);
  }

  /// 用户信息描述
  Widget titleInfoCloumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("阿哈哈哈哈哈", style: TextStyle(color: Color(0xFF1E192F), fontSize: 24, fontWeight: FontWeight.bold),),
        Text("已有29人收藏 293人点赞", style: TextStyle(color: Color(0xFFC2BFCF), fontSize: 12),),
        Column(
          children: <Widget>[
            _userInfoRow(),
            recipetDesc(),
          ],
        )
      ],
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
                  image: widget.model.uImageSrc
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
            child: Text(widget.model.uNickName,
              style: TextStyle(fontSize: 12, color: Color(0xFF1E192F)),
            ),
          )
        ],
      ),
    );
  }
  /// 菜谱描述
  Widget recipetDesc() {
    return Text(widget.model.title
    , style: TextStyle(color: Color(0xFF84838B), fontSize: 12),);
  }




}