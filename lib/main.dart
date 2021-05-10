import 'package:flutter/material.dart';
import 'package:flutter_tszgnewchun/tszg_mine.dart';
import 'package:flutter_tszgnewchun/tszg_news.dart';
import 'package:flutter_tszgnewchun/tszg_chaxun.dart';
import 'package:flutter_tszgnewchun/tszg_home.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(211, 77, 43, 1),
        // primarySwatch: Color.fromRGBO(185, 90, 60, 1),
      ),
      home: IndexPage(),
    );
  }
}
class IndexPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _IndexState();
  }
}

class _IndexState extends State<IndexPage> {
  final List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
      backgroundColor: Colors.white,
      icon: Icon(Icons.home,
        color:Color.fromRGBO(62, 55, 50, 1),
      ),
      title: Text(
          "首页",
        style: TextStyle(
         color:Color.fromRGBO(62, 55, 50, 1),
          fontSize: 14,
        ),
      ),
    ),
    BottomNavigationBarItem(
      // backgroundColor: Colors.deepOrange,
      icon: Icon(Icons.local_mall,
        color:  Colors.black,),
      title: Text("工作台",
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),),
    ),
    BottomNavigationBarItem(
      // backgroundColor: Colors.red,
      icon: Icon(Icons.message,
        color:  Colors.black,),
      title: Text("资讯",
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),),
    ),
    BottomNavigationBarItem(
      // backgroundColor: Colors.red,
      icon: Icon(Icons.person,
        color:  Colors.black,),
      title: Text("我的",
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),),
    ),
  ];

  int currentIndex;
  List _titlearry = <String>['首页','工作台','资讯','我的'];
  final pages = [HomePage(), MsgPage(), CartPage(), PersonPage()];

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${_titlearry[currentIndex]}'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavItems,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.shifting,
        onTap: (index) {
          _changePage(index);
        },
      ),
      body: pages[currentIndex],
    );
  }

  /*切换页面*/
  void _changePage(int index) {
    /*如果点击的导航项不是当前项  切换 */
    if (index != currentIndex) {
      setState(() {
        currentIndex = index;
      });
    }
  }
}