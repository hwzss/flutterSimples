import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/business/news/Models/bs_news_model.dart';
import 'package:flutterapp/business/news/Views/bs_news_single_pic_cell.dart';
import 'package:flutterapp/business/news/Views/bs_news_three_pic_cell.dart';

/// 首页
// ignore: must_be_immutable
class NewsVc extends StatefulWidget {

  String title;
  List<JFCNewsModel> models = List();

  NewsVc({Key key,  this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _NewsVcState();

}

class _NewsVcState extends State<NewsVc> {

  @override
  void initState() {
    super.initState();
    this._requestNews();
  }

  @override
  Widget build(BuildContext context) {
    return _listView();
  }

  /// 列表
  Widget _listView() {
    /// TODO 此页有下划线 应使用 ListView.separated
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        JFCNewsModel model = widget.models[index];
        if (model.imgSrcs.length == 1) {
          return JFCNewsSinglePicCell(model: model,);
        }else {
          return JFCNewsThreePicCell(model: model,);
        }
      },
      // itemExtent: 300,
      itemCount: widget.models.length,
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
    );
  }


  void _requestNews() {
    for (int i = 0; i < 22; i++) {
      var model;
      int tag = i % 3;
      switch (tag) {
        case 0:
          {
            model = JFCNewsModel("杭州天香楼的东坡肉、楼外楼的西湖醋鱼名扬中外。在这些杭帮老字号里",
                ["https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1155094793,592129984&fm=26&gp=0.jpg"]
            );
          }
          break;
        case 1:
          {
            model = JFCNewsModel("楼外楼的西湖醋鱼名扬中外",
                [
                  "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1155094793,592129984&fm=26&gp=0.jpg",
                  "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1155094793,592129984&fm=26&gp=0.jpg",
                ]
            );
          }
          break;
        default:
          {
            model = JFCNewsModel("杭州天香楼的东坡肉、楼外楼的西湖醋鱼名扬中外。在这些杭帮老字号里",
                [
                  "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1155094793,592129984&fm=26&gp=0.jpg",
                  "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1155094793,592129984&fm=26&gp=0.jpg",
                  "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1155094793,592129984&fm=26&gp=0.jpg"
                ]
            );
          }
          break;
      }
      widget.models.add(model);
    }
  }
    /*
        TODO 图片的宽高未做好限制导致溢出屏幕
             可思考使用 LayoutBuilder 获取父组件宽高计算
             或 MediaQuery.of(context).size 获取
             或 MediaQueryData.fromWindow(window).size 获取
    */

}