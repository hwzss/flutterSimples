import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/business/collection/bs_collection_vc.dart';
import 'package:flutterapp/business/home/bs_home_vc.dart';
import 'package:flutterapp/business/news/bs_news_home_vc.dart';


class RootVc extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _RootVcState();
}


class _RootVcState extends State<RootVc> {

  List<Widget> _vcs;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _vcs = List()
      ..add(HomeVc(title: "首页"))
      ..add(JFCNewsHomeTabVc())
      ..add(CollectionVc("收藏"));
  }

  @override
  Widget build(BuildContext context) {
    BottomNavigationBar bottomNavBar = BottomNavigationBar(
      items: [
        BottomNavigationBarItem(title: Text("首页"), icon: Image.asset('icons/tab_home_def@1x.png'), activeIcon: Image.asset('icons/tab_home@1x.png')),
        BottomNavigationBarItem(title: Text("资讯"), icon: Image.asset('icons/tab_zx_def@1x.png'), activeIcon: Image.asset('icons/tab_zx@1x.png')),
        BottomNavigationBarItem(title: Text("收藏"), icon: Image.asset('icons/tab_sc_def@1x.png'), activeIcon: Image.asset('icons/tab_sc@1x.png')),
      ],
      currentIndex: _selectedIndex,
      onTap: onItemTap,
      selectedFontSize: 10,
      unselectedFontSize: 10,
      selectedItemColor: Color(0xFF00AD53),
      unselectedItemColor: Color(0xFF84838B),
    );
    return Scaffold(bottomNavigationBar: bottomNavBar, body: _vcs[_selectedIndex],);
  }

  void onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

}