

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LTCookRecipeDetailVc extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _LTCookRecipeDetailVcState();
  }
}

class _LTCookRecipeDetailVcState extends State<LTCookRecipeDetailVc> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Positioned(
          left: 0,
          top: 0,
          right: 0,
          child: SizedBox(
            height: 200,
            child: Container(
              decoration: BoxDecoration( color: Colors.red),
            ),
          )
        )
      ],
    );
  }

}