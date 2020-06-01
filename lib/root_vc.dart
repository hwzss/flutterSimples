
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RootVc extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _RootVcState();
}


class _RootVcState extends State<RootVc> {

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    BottomNavigationBar bottomNavBar = BottomNavigationBar(
      items: [
        BottomNavigationBarItem(title: Text("首页"), icon: Image.asset('icons/tab_home_def@1x.png'), activeIcon: Image.asset('icons/tab_home@1x.png')),
        BottomNavigationBarItem(title: Text("资讯"), icon: Image.asset('icons/tab_zx_def@1x.png'), activeIcon: Image.asset('icons/tab_zx@1x.png')),
        BottomNavigationBarItem(title: Text("收藏"), icon: Image.asset('icons/tab_sc_def@1x.png'), activeIcon: Image.asset('icons/tab_sc@1x.png')),
      ],
      currentIndex: _selectedIndex,
      onTap: onItemTap,);

    return Scaffold(bottomNavigationBar: bottomNavBar,);
  }


  void onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

}