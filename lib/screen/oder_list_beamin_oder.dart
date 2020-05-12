import 'package:flutter/material.dart';

class BeaminOder extends StatelessWidget {

  List data = [
    {
      "oderDay":"2019/12/15(일)",
      "store":"버거킹 건대입구점",
      "oderMenu":"불고기와퍼세트 외 1개 20,200원",
      "photo":"images/16.png"
    },  {
      "oderDay":"2019/11/23(토)",
      "store":"써니치킨(뚝섬유원지 본점)",
      "oderMenu":"순살 트리플 세트 1개 21,900원",
      "photo":"images/8.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
        itemBuilder: (context , index){
      return Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            title(index),
            menu(index),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                card('리뷰쓰기' , Icon(Icons.mode_edit , color: Colors.grey,) , Colors.grey),
                card('가게보기' , Icon(Icons.home , color: Colors.black,) , Colors.black),
                card('주문상세' , Icon(Icons.view_list , color: Colors.black,) , Colors.black),
              ],
            )
          ],
        ),
      );
    });
  }


  Widget title(int index){
    return Row(
      children: <Widget>[
        Container(
          height: 50,
          width: 50,
          child: Image(image: AssetImage(data[index]['photo'])),
        ),SizedBox(width: 5),
        Text('${data[index]['oderDay']}',style: TextStyle(color: Colors.grey),)
      ],
    );
  }

  Widget menu(int index){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('${data[index]['store']}',style: TextStyle(fontSize: 22),),
          SizedBox(height: 5),
          Text('${data[index]['oderMenu']}'),
        ],
      ),
    );

  }

  Widget card(String text,Widget icon,Color colors){
    return Row(
      children: <Widget>[
        Container(
          height: 70,
          width: 115,
          child: Card(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    icon,
                    Text('${text}',style: TextStyle(color: colors),)
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  border: Border.all(color: colors),
                ),
              )
          ),
        ),
      ],
    );
  }




}

