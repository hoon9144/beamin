import 'package:flutter/material.dart';

class CallOder extends StatelessWidget {

  List data = [
    {
      "name":"피자엉클",
      "star":"4.9",
      "mini":"14,000원",
      "popular":"리치골드피자,치즈크러스트 포테이토 피자",
      "tip":"2,000원",
      "photo":"images/pizza.png"
    },
    {
      "name":"홍정원",
      "star":"4.0",
      "mini":"10,000원",
      "popular":"옛날짜장,삼선우동",
      "tip":"1,000원",
      "photo":"images/hong.png"
    },
    {
      "name":"동대문엽기떡볶이 성수점",
      "star":"4.6",
      "mini":"14,000원",
      "popular":"A set, B set",
      "tip":"1,000원",
      "photo":"images/dongdam.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text('총 ${data.length}개')),
              listView(),
            ],
          ),
        )
    );
  }



  Widget listView(){
    return Expanded(
      child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index){
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  width: 90,
                  height: 90,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(data[index]['photo']),
                  ),
                ),
                SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(data[index]['name'],style: TextStyle(fontSize: 17,fontWeight: FontWeight.w100)),
                    Row(
                      children: <Widget>[
                        Icon(Icons.star,color: Colors.amber,size: 15),
                        Text('${data[index]['star']} 최소주문 ${data[index]['mini']}',style: TextStyle(fontSize: 13),)
                      ],
                    ),
                    Text('${data[index]['popular']}',style: TextStyle(fontSize: 13)),
                    Text('${data[index]['tip']}',style: TextStyle(fontSize: 13)),
                  ],
                )
              ],
            );
          }),
    );
  }


}
