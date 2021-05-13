import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/widgets.dart';
import 'package:toast/toast.dart';
import 'dart:math' as math;
class MsgPage  extends StatefulWidget {
  @override
  _MsgPageView createState() => _MsgPageView();
}
class _MsgPageView extends State<MsgPage> {

  List  _Bottomanmesarry = <String>['一户一挡','商品查询','证件信息','电子台账','监管地图','看后厨','晨检记录','陪餐记录','消毒记录','培训记录'];


  final _iconpages = [Icon(
    Icons.storefront_outlined,
    color:Colors.white,
  ),Icon(
    Icons.local_mall_outlined,
    color:Colors.white,
  ),Icon(
    Icons.recent_actors_outlined,
    color:Colors.white,
  ),
    Icon(
      Icons.print_outlined,
      color:Colors.white,
    ),Icon(
      Icons.map_outlined,
      color:Colors.white,
    ),Icon(
      Icons.videocam_outlined,
      color:Colors.white,
    ),
    Icon(
      Icons.monitor,
      color:Colors.white,
    ),Icon(
      Icons.dinner_dining,
      color:Colors.white,
    ),Icon(
      Icons.coronavirus_outlined,
      color:Colors.white,
    ),
    Icon(
      Icons.person_add_alt_1_outlined,
      color:Colors.white,
    )
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
    return   CustomScrollView(
        slivers: <Widget>[
          SliverPadding(

            padding: const EdgeInsets.only(left:20,top: 20,right: 20),
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
                  childAspectRatio: 1
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
                          child:_iconpages[index],
                          padding: EdgeInsets.all(10),
                          shape: CircleBorder(),
                        ),

                        Text(
                          _Bottomanmesarry[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ],)
                  );
                },
                childCount: 10,
              ),
            ),
          ),




  ]);
  }
}