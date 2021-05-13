import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/widgets.dart';
import 'package:toast/toast.dart';
import 'dart:math' as math;
class HomePage extends StatefulWidget {
  @override
  _HomecustomSView createState() => _HomecustomSView();
}


class _HomecustomSView extends State<HomePage> {

  List _TOPNamesarry = <String>['代理商','零售门店','餐饮店'];
  List _Topnumsarry = [17,8,8];
  List _ShenHesarry = <String>['商户审核','品牌审核','质检审核'];
  List _ZhiFasarry = <String>['执法记录','投诉处理'];


  final pages = [Icon(
    Icons.storefront_outlined,
    color:Color.fromRGBO(253, 117, 80, 1),
  ),Icon(
      Icons.shopping_cart_outlined,
    color:Color.fromRGBO(253, 117, 80, 1),
  ),Icon(
    Icons.dinner_dining,
    color:Color.fromRGBO(253, 117, 80, 1),
  ),
  ];
  final Shenhepages =[ Icon(
    Icons.check_circle_outlined,
    color:Colors.white,
  ),
    Icon(
      Icons.label_important,
      color:Colors.white,
    ),
    Icon(
      Icons.library_add_check,
      color:Colors.white,
    ),];

  final ZhiFapages =[
    Icon(
      Icons.person_search_rounded,
      color:Colors.white,
    ),Icon(
    Icons.privacy_tip_outlined,
    color:Colors.white,
  ),
    ];

  @override
  void initState() {
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return
      // Scaffold(
      // body:
    CustomScrollView(
        slivers: <Widget>[
          // const   SliverAppBar(
          //   pinned: true,
          //   expandedHeight: 250.0,
          //   flexibleSpace: FlexibleSpaceBar(
          //     title: const Text('Demo'),
          //       // background: Image.asset('images/food01.jpeg', fit: BoxFit.cover),
          //   ),
          // ),

          SliverPadding(

            padding: const EdgeInsets.only(left:10,right:10,top: 0.3,bottom: 0),
            sliver:
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //横轴元素个数
                crossAxisCount:3,
            //纵轴间距
            mainAxisSpacing: 10.0,
            //横轴间距
            crossAxisSpacing: 10.0,
            //子组件宽高长度比例
            childAspectRatio: 1.4
              ),

              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return
                      Container(child: Column(children: <Widget>[


                    Container(
                    child:Row(
                      children: [

                       pages[index],
                        SizedBox(width: 8),

                        Text(
                          _TOPNamesarry[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            // letterSpacing: 0.5,
                            fontSize: 18,
                          ),
                        ),
                      ]
                  )
                    , height: 30,
                  ),

                        SizedBox(height: 10),
                        Text(
                          '${_Topnumsarry[index]}家',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            // letterSpacing: 0.5,
                            fontSize: 18,
                          ),
                        ),
                      ]));
                },
                childCount: 3,
              ),
            ),
          ),
//
          SliverPadding(
            padding: const EdgeInsets.only(left: 30,right: 30),
            sliver: SliverToBoxAdapter(

              child: ClipRRect( borderRadius: BorderRadius.circular(20),
    child:

              Container(
                padding: const EdgeInsets.all(0.5),
                child:
                ClipRRect( borderRadius: BorderRadius.circular(20),
    child:

                Container(

               child:
                Row(

                  children: <Widget>[
                    SizedBox(width: 15),


                  Column(children: <Widget>[
                    SizedBox(height: 5),

                    DecoratedBox(
                      decoration:BoxDecoration(color: Colors.white),
                      child: Transform.rotate(
                        //旋转90度
                        angle:math.pi/2 ,
                        child:  Icon(
                          Icons.speaker_phone,
                   // Icons.message_outlined,
                   color:Color.fromRGBO(253, 117, 80, 1),
                 ),
                      ),
                    ),

                    Text(
                      '消息',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color:Color.fromRGBO(253, 117, 80, 1),
                        fontFamily: 'Roboto',
                        fontSize: 12,
                      ),
                    ),
                    ]),

                    SizedBox(width: 10),
                    SizedBox(child: Container(
                      color:Colors.grey,
                      height: 50,
                      width: 1,
                    ),),
                    Spacer(), // use Spacer

                  ],
                ),
                // height: 30,
                  color:Colors.white,
              ),
                ),
                color: Color.fromRGBO(253, 117, 80, 1),
                height: 50,
//                 decoration:  BoxDecoration(
// // 背景
//                   color: Colors.green,
//                   // 设置四周圆角 角度
//                   borderRadius: BorderRadius.all(Radius.circular(4.0)),
//                   // 设置四周边框
//                   // border: new Border.all(width: 1, color: Colors.red),
//                 ),
              ),
            )
            ),
          ),






//审核
          SliverPadding(
            padding: const EdgeInsets.only(top: 0.3,bottom: 0),
            sliver: SliverToBoxAdapter(

              child: Container(

                child:
                Row(

                  children: <Widget>[
                    SizedBox(width: 10),
                    SizedBox(child: Container(
                      color:Color.fromRGBO(253, 117, 80, 1),
                      height: 20,
                      width: 5,
                    ),),
                    SizedBox(width: 10),
                Text(
                  '审核',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color:Colors.black,
                    // [UIColor colorWithRed:253/255.0 green:117/255.0 blue:80/255.0 alpha:1]#FD7550
                    // fontWeight: FontWeight.w800,
                    fontFamily: 'Roboto',
                    // letterSpacing: 0.5,
                    fontSize: 18,
                  ),
                ),
                Spacer(), // use Spacer

                ],
                ),
                // height: 30,
                color: Colors.white,
              ),
            ),
          ),
    SliverPadding(

    padding: const EdgeInsets.only(left:30,top: 0,bottom: 0),
    sliver:
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //横轴元素个数
                crossAxisCount:4,
                //纵轴间距
                mainAxisSpacing: 10.0,
                //横轴间距
                crossAxisSpacing: 10.0,
                //子组件宽高长度比例
                childAspectRatio: 1.1
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return  Container(
                  margin: const EdgeInsets.only(left: 5,right: 10),
                  child: Column(children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      print(index);
                    },
                    color:index.isOdd? Colors.green:Color.fromRGBO(253, 117, 80, 1),
                    child:Shenhepages[index],
                    padding: EdgeInsets.all(10),
                    shape: CircleBorder(),
                  ),

                    Text(
                      _ShenHesarry[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        // fontWeight: FontWeight.w800,
                        // fontFamily: 'Roboto',
                        // letterSpacing: 0.5,
                        fontSize: 12,

                      ),
                    ),
],)
                );
              },
              childCount: 3,
            ),
          ),
    ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 0.3,bottom: 0),
            sliver: SliverToBoxAdapter(

              child: Container(

                child:
                Row(

                  children: <Widget>[
                    SizedBox(width: 10),
                    SizedBox(child: Container(
                      color:Color.fromRGBO(253, 117, 80, 1),
                      height: 20,
                      width: 5,
                    ),),
                    SizedBox(width: 10),
                    Text(
                      '执法',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color:Colors.black,
                        // [UIColor colorWithRed:253/255.0 green:117/255.0 blue:80/255.0 alpha:1]#FD7550
                        // fontWeight: FontWeight.w800,
                        fontFamily: 'Roboto',
                        // letterSpacing: 0.5,
                        fontSize: 18,
                      ),
                    ),
                    Spacer(), // use Spacer

                  ],
                ),
                // height: 30,
                color: Colors.white,
              ),
            ),
          ),

    SliverPadding(

    padding: const EdgeInsets.only(left:30,bottom: 0),
    sliver:
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //横轴元素个数
                crossAxisCount:4,
                //纵轴间距
                mainAxisSpacing: 10.0,
                //横轴间距
                crossAxisSpacing: 10.0,
                //子组件宽高长度比例
                childAspectRatio: 0.8
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                    margin: const EdgeInsets.only(left: 5,right: 10),
                    child: Column(children: <Widget>[
                      FlatButton(
                        onPressed: () {
                          print(index);
                        },
                        color:index.isOdd? Colors.green:Color.fromRGBO(253, 117, 80, 1),
                        child:ZhiFapages[index],
                        padding: EdgeInsets.all(10),
                        shape: CircleBorder(),
                      ),

                      Text(
                        _ZhiFasarry[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          // fontWeight: FontWeight.w800,
                          // fontFamily: 'Roboto',
                          // letterSpacing: 0.5,
                          fontSize: 12,

                        ),
                      ),
                    ],)
                );



                    // Container(
                //   margin: const EdgeInsets.only(left: 5,right: 10),
                //   width: 40,
                //   // color: Colors.red,
                //   child:
                //   FlatButton(
                //     onPressed: () {
                //       print(index);
                //     },
                //     color:index.isOdd? Colors.green:Color.fromRGBO(253, 117, 80, 1),
                //     child: Text(
                //       _ZhiFasarry[index],
                //       textAlign: TextAlign.center,
                //       style: TextStyle(
                //         color: Colors.white,
                //         // fontWeight: FontWeight.w800,
                //         // fontFamily: 'Roboto',
                //         // letterSpacing: 0.5,
                //         fontSize: 12,
                //
                //       ),
                //     ),
                //     padding: EdgeInsets.all(0),
                //     shape: CircleBorder(),
                //   ),
                //   // Spacer(), // use Spacer
                //
                // );
              },
              childCount: 2,
            ),
          )
    ),

          // SliverFixedExtentList(
          //   itemExtent: 50.0,
          //
          //   delegate: SliverChildBuilderDelegate(
          //         (BuildContext context, int index) {
          //       return Container(
          //         alignment: Alignment.center,
          //         color: Colors.lightBlue[100 * (index % 9)],
          //         child: Text('List Item $index'),
          //       );
          //     },
          //     childCount: 5,
          //   ),
          // ),
        ],
      );
      // );
  }

}



