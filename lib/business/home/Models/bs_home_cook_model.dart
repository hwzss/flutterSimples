import 'package:flutterapp/business/common/http/src/base_net_image.dart';

/// 首页菜谱
class HomeCookModel {

  /// 标题
  String title;
  /// 用户头像
  String uImageSrc;
  /// 用户昵称
  String uNickName;
  /// 菜谱图片
  String imageScr;

  HomeCookModel(this.title, {this.uImageSrc, this.uNickName, this.imageScr});

  static HomeCookModel formJson(Map<String, dynamic> json) {
    Map map = json;
    String imageid = map["imageid"];
    String description = map["description"];
    String authorname = map["authorname"];
    String authorimageid = map["authorimageid"];

    var imagUrl =  getNetImagePath(imageid);
    var uimageUrl =  getNetImagePath(authorimageid);
    return  HomeCookModel(description,
        imageScr: imagUrl,
        uImageSrc: uimageUrl,
        uNickName: authorname);
  }
}

