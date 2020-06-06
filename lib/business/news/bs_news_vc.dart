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
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: SizedBox(
                height: 110,
                width: 400,
                child:FadeInImage.assetNetwork(
                    placeholder: "",
                    fit: BoxFit.cover,
                    image: "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1155094793,592129984&fm=26&gp=0.jpg"
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 110, 0, 0),
              child:  CustomScrollView(
                slivers: <Widget>[
                  _btnGridView(),
                  _listView()
                ],
              ),
            )
          ],
        )
    );
  }

  Widget _btnGridView() {
    return SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1
        ),

        delegate: SliverChildBuilderDelegate((BuildContext context, int index){
          return _image();
        }, childCount: 3),
    );
  }


  /// 列表
  Widget _listView() {
    return SliverPadding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        sliver: SliverFixedExtentList(
          itemExtent: 300,
          delegate: new SliverChildBuilderDelegate((BuildContext context, int index) {
            return _cell();
          }, childCount: 22)
      )
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
    return AspectRatio(
      aspectRatio: 1/2,
      child: FadeInImage.assetNetwork(
          placeholder: "",
          fit: BoxFit.cover,
          image: "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1155094793,592129984&fm=26&gp=0.jpg"
      ),
    );

  }

}