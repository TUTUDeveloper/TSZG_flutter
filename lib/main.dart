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
        // primaryColor: Color.fromRGBO(211, 77, 43, 1),
        primarySwatch: Colors.red,
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
    return
     Scaffold(
      appBar: AppBar(
        title: Text('${_titlearry[currentIndex]}'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '主页',),
          BottomNavigationBarItem(icon: Icon(Icons.local_mall), label: '商城'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: '资讯'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: '我的'),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        // selectedItemColor:Colors.red,
        //  unselectedItemColor:Colors.black,
        // type: BottomNavigationBarType.shifting,
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