import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// 首页

class NewsVc extends StatefulWidget {

  final String title;

  NewsVc({Key key,  this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _NewsVcState();

}

class _NewsVcState extends State<NewsVc> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title), backgroundColor: Colors.green,),
        body: _listView()
    );
  }

  /// 列表
  Widget _listView() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return (index % 2 == 0 ? SizedBox(height: 300, child:_cell()):SizedBox(height: 200, child:_threePicCell()));
      },
//      itemExtent: 300,
      itemCount: 22,
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
    );
  }

  Widget _threePicCell() {
    return Column(
      children: <Widget>[
        Text("杭州天香楼的东坡肉、楼外楼的西湖醋鱼名扬中外。在这些杭帮老字号里",
        style: TextStyle(color: Color(0xFF1E192F), fontSize: 16),),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
          child: SizedBox(
            height: 130,
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 0,
                  childAspectRatio: 1,
              ),
              children: <Widget>[
                _threePic(),
                _threePic(),
                _threePic(),
              ],
            ),
          ),
        )
      ],
    );
  }
  
  Widget _threePic(){
     return ClipRRect(
       borderRadius: BorderRadius.circular(16),
       child: _image(),
     );
  }

  Widget _cell() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 4, 0, 20),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          _image()
        ],
      ),
    );
  }


  Widget _image() {
    return FadeInImage.assetNetwork(
        placeholder: "",
        fit: BoxFit.cover,
        image: "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1155094793,592129984&fm=26&gp=0.jpg"
    );

  }

}