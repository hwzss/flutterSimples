

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchVc extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
      return _SearchVcState();
  }
}

class _SearchVcState extends State<SearchVc> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text("搜索"),),
     );
  }
}
