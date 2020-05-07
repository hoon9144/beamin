import 'package:flutter/material.dart';
import 'package:flutterbeamin/screen/like.dart';

import 'call_oder.dart';
import 'direct.dart';

class Favorites extends StatefulWidget {
  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            fontFamily: 'BlackHanSans'
        ),
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.white,
                  title: Text(
                    '찜한가게',
                    style: TextStyle(color: Colors.black),
                  ),
                  centerTitle: true,
                  elevation: 0.0,
                  bottom: TabBar(
                      indicatorColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.label,
                      labelColor: Colors.black,
                      unselectedLabelStyle: TextStyle(color: Colors.black),
                      tabs: [
                        Tab(text: '찜한가게'),
                        Tab(text: '바로결제'),
                        Tab(text: '전화주문'),
                      ]),
                ),
                body: TabBarView(
                  children: [LikeStore(), Direct(), CallOder()],
                ),floatingActionButton: FloatingActionButton(onPressed: () => null , child: Icon(Icons.shopping_cart),backgroundColor: Color.fromRGBO(88, 209, 206, 10),),
            )));
  }
}
