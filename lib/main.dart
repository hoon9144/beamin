import 'package:flutter/material.dart';
import 'package:flutterbeamin/screen/favorites.dart';
import 'package:flutterbeamin/screen/home.dart';
import 'package:flutterbeamin/screen/my_beamin.dart';
import 'package:flutterbeamin/screen/oder_list.dart';

void main() => runApp(MaterialApp(
    showSemanticsDebugger: false,
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'BlackHanSans'
    ),
    home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _currentIndex = 0;

  void onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> list = [Home(), Favorites(), OderList(), MyBeamin()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: onTap,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text(
                  '홈',
                  style: TextStyle(fontSize: 10),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                title: Text(
                  '찜한가게',
                  style: TextStyle(fontSize: 10),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_books),
                title: Text(
                  '주문내역',
                  style: TextStyle(fontSize: 10),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.insert_emoticon),
                title: Text(
                  'my배민',
                  style: TextStyle(fontSize: 10),
                ))
          ]),
    );
  }



}
