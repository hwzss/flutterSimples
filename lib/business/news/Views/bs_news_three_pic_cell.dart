import 'package:flutter/cupertino.dart';
import 'package:flutterapp/business/news/Models/bs_news_model.dart';

/// 三小图资讯cell
class JFCNewsThreePicCell extends StatelessWidget {

  final JFCNewsModel model;
  final int imageSpaceBetweenW = 10;
  final int imageCount = 3;

  const JFCNewsThreePicCell({Key key, this.model}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(this.model.title,
          style: TextStyle(color: Color(0xFF1E192F), fontSize: 16),),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
          child:LayoutBuilder(
            builder: (context, constraints) {
              final w = constraints.maxWidth;
              final imgW =  (w - imageSpaceBetweenW * 2) / imageCount;
              return SizedBox(
                height: imgW,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    _threePic((this.model.imgSrcs.length > 0)?this.model.imgSrcs[0]:""),
                    _threePic((this.model.imgSrcs.length > 1)?this.model.imgSrcs[1]:""),
                    _threePic((this.model.imgSrcs.length > 2)?this.model.imgSrcs[2]:""),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }


  Widget _threePic(String url){
    return AspectRatio(
      aspectRatio: 1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: _image(url),
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
