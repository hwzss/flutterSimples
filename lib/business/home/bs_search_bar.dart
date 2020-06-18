

import 'package:flutter/cupertino.dart';

class HomeSearchBarView extends StatelessWidget {

  final String placeholder;
  final String imageName;

  const HomeSearchBarView({Key key, this.placeholder, this.imageName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xFFe7e7e7)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(this.imageName),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
            child: Text(this.placeholder, style: TextStyle(color: Color(0xFFC2BFCF), fontSize: 16),),
          )
        ],
      ),
    );
  }
}
