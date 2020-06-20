
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/common/Constants/ui_constants.dart';

import 'SubModules/bs_news_vc.dart';

// ignore: must_be_immutable
class JFCNewsHomeTabVc extends StatefulWidget {

  List<Widget> titleTabs = [
    Tab(
      text: '江湖里',
    ),
    Tab(
      text: '小小滴人呀',
    ),
    Tab(
      text: '浪啊浪',
    ),
    Tab(
      text: '江湖',
    ),
    Tab(
      text: '儿女',
    ),
    Tab(
      text: '江湖',
    ),
    Tab(
      text: '飘',
    ),
  ];

  @override
  State<StatefulWidget> createState() {
    return _JFCNewsHomeTabVcState();
  }

}

class _JFCNewsHomeTabVcState extends State<JFCNewsHomeTabVc> with SingleTickerProviderStateMixin {

  TabController _tabController;

  List<Widget> _tabVcs;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: widget.titleTabs.length , vsync: this);
    _tabVcs = this.getTabVcs();
  }


  @override
  Widget build(Object context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.green
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, kStatusBarHeight, 0, 0),
              child: SizedBox(
                height: kToolbarHeight,
                child: TabBar(
                  isScrollable: true,
                  controller: _tabController,
                  tabs: widget.titleTabs,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: kStatusBarHeight + kToolbarHeight,
          right: 0,
          left: 0,
          bottom: 0,
          child:  Container(
            child: TabBarView(
              controller: _tabController,
              children: _tabVcs,
            ),
          ),
        )
      ],
    );

  }

  List<Widget> getTabVcs() {
    List<Widget> vcs = List();
    widget.titleTabs.forEach((element) {
      vcs.add(NewsVc(title: "d"));
    });
    return vcs;
  }

}