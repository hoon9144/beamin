import 'package:flutter/material.dart';
import 'package:flutterbeamin/screen/oder_list_b_mart.dart';
import 'package:flutterbeamin/screen/oder_list_beamin_oder.dart';

class OderList extends StatefulWidget {
  @override
  _OderListState createState() => _OderListState();
}

class _OderListState extends State<OderList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'BlackHanSans'
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text('주문내역',style: TextStyle(color: Colors.black),),
            actions: <Widget>[IconButton(icon: Icon(Icons.refresh,color: Colors.black,), onPressed: (){
              print('refresh!');
            })],
            bottom: TabBar(
                labelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.black,
                unselectedLabelStyle: TextStyle(color: Colors.black,fontSize: 17),
                tabs: [
              Tab(text: '배달.배민오더'),
              Tab(text: 'B마트')
            ]),
          ),
          body: TabBarView(children: [BeaminOder(),Bmart()])
        ),
      ),
    );
  }
}
