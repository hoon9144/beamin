import 'package:flutter/material.dart';

class Direct extends StatefulWidget {
  @override
  _DirectState createState() => _DirectState();
}

class _DirectState extends State<Direct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('바로결재 내역이 없습니다.'),
      ),
    );
  }
}
