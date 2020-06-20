
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bs_news_vc.dart';

// ignore: must_be_immutable
class JFCNewsHomeTabVc extends StatefulWidget {


  final List<Widget> titleTabs = [
    Tab(
      text: '江湖',
    ),
    Tab(
      text: '小小滴人呀',
    ),
    Tab(
      text: '小小滴人呀',
    ),
    Tab(
      text: '小小滴人呀',
    ),
    Tab(
      text: '小小滴人呀',
    ),
  ];

  @override
  State<StatefulWidget> createState() {
    return _JFCNewsHomeTabVcState();
  }

}

class _JFCNewsHomeTabVcState extends State<JFCNewsHomeTabVc> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: widget.titleTabs.length , vsync: this);
  }

  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: widget.titleTabs,
        ),
      ),
      body: Container(
        child: TabBarView(
          controller: _tabController,
          children: <Widget>[
            NewsVc(title: "d"),
            NewsVc(title: "d"),
            NewsVc(title: "d"),
          ],
        ),
      ),
    );
  }

}