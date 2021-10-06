import 'package:flutter/material.dart';
import 'package:ui_hw/my_page.dart';
import 'package:ui_hw/like.dart';
import 'package:ui_hw/collect_see.dart';
import 'package:ui_hw/stroe.dart';

import 'package:ui_hw/zigzag.dart';

class TabPage extends StatefulWidget {
  const TabPage({Key key}) : super(key: key);

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _selectedIndex = 0;
  final _pages = [
    Zigzag(),
    Store(),
    CollectSee(),
    Like(),
    MyPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.circle), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.house), label: '스토어'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: '모아보기'),
          BottomNavigationBarItem(icon: Icon(Icons.star_border), label: '찜'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: '마이페이지'),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: Colors.orange,
        selectedItemColor: Colors.black,
        selectedLabelStyle: const TextStyle(color: Colors.red),
        unselectedLabelStyle: const TextStyle(color: Colors.black54, backgroundColor: Colors.grey),
        unselectedItemColor: Colors.grey,
        onTap: (int index){
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
