import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //타이틀아이템리스트들 더미데이터 리스트뷰로 뿌릴라고만들어놓은거
  List titleItemList = [
    {"name": "B마트 홈", "photo": "images/01.png"},
    {"name": "정육.수산.계란", "photo": "images/02.png"},
    {"name": "밀키드", "photo": "images/03.png"},
    {"name": "우유.유제품", "photo": "images/04.png"},
    {"name": "헤어.바디.세안", "photo": "images/05.png"},
    {"name": "과일.샐러드", "photo": "images/06.png"},
    {"name": "아이스크림", "photo": "images/07.png"},
    {"name": "과자.초콜릿", "photo": "images/08.png"},
    {"name": "빵.시리얼", "photo": "images/09.png"},
    {"name": "라면.면", "photo": "images/10.png"}
  ];

  List gridList = [
    {"name": "배민라이더스", "photo": "images/1.png"},
    {"name": "1인분", "photo": "images/2.png"},
    {"name": "배민오더", "photo": "images/3.png"},
    {"name": "한식", "photo": "images/4.png"},
    {"name": "분식", "photo": "images/5.png"},
    {"name": "카페.디저트", "photo": "images/6.png"},
    {"name": "돈까스.회.일식", "photo": "images/7.png"},
    {"name": "치킨", "photo": "images/8.png"},
    {"name": "피자", "photo": "images/9.png"},
    {"name": "아시안.양식", "photo": "images/_10.png"},
    {"name": "중국집", "photo": "images/11.png"},
    {"name": "족발.보쌈", "photo": "images/12.png"},
    {"name": "야식", "photo": "images/13.png"},
    {"name": "찜.탕", "photo": "images/14.png"},
    {"name": "도시락", "photo": "images/15.png"},
    {"name": "패스트푸드", "photo": "images/16.png"},
    {"name": "프랜차이즈", "photo": "images/17.png"},
    {"name": "맛집랭킹", "photo": "images/18.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          padding: EdgeInsets.all(2),
          margin: EdgeInsets.only(right: 12),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
            Text(
              '서울 성동구 둘레11길 8-1',
              style: TextStyle(
                fontSize: 17,
                color: Colors.black,
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                  child: Container(
                    width: 18,
                    height: 18,
                    child: CircleAvatar(
                      backgroundColor: Color.fromRGBO(88, 209, 206, 100),
                    ),
                  ),
                ),
                Positioned(
                    child: IconButton(
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          size: 16,
                          color: Colors.white,
                        ),
                        onPressed: null))
              ],
            ),
          ]),
        ),
        centerTitle: true,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.crop_free), onPressed: null)
        ],
      ),
      body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            listView(),
            title(),
            titleItems(),
            gridView()
          ],
        ),
      floatingActionButton: FloatingActionButton(onPressed: () => null , child: Icon(Icons.shopping_cart),backgroundColor: Color.fromRGBO(88, 209, 206, 10),),
      );
  }

  Widget listView() {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Image.asset('images/beamin_banner_01.png'),
          SizedBox(
            width: 10,
          ),
          Image.asset('images/beamin_banner_02.png'),
          SizedBox(
            width: 10,
          ),
          Image.asset('images/beamin_banner_03.png'),
          SizedBox(
            width: 10,
          ),
          Image.asset('images/beamin_banner_04.png')
        ],
      ),
    );
  }

  Widget title() {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Column(children: <Widget>[
          Text(
            'B마트! 배달이 내일 오는거 봤어요?',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w100),
          ),
        ]));
  }

  Widget titleItems() {
    return Expanded(
      flex: 1,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: titleItemList.length,
          itemBuilder: (context, index) {
            return Container(
                width: 80,
                height: 40,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage(titleItemList[index]['photo']),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(titleItemList[index]['name']),
                    SizedBox(
                      height: 10,
                    ),
                    dottedLine()
                  ],
                ));
          }),
    );
  }

  //점선!
  Widget dottedLine() {
    return DottedLine(
      dashColor: Colors.grey,
    );
  }

  Widget gridView() {
    return Expanded(
      flex: 3,
      child: GridView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: gridList.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4 ,
                  crossAxisSpacing: 2,
                mainAxisSpacing: 2
              ),
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    width: 60,
                    height: 50,
                    child: Image.asset(gridList[index]['photo']),
                  ),SizedBox(height: 2),
                  Text(gridList[index]['name'],style: TextStyle(fontSize: 13),)
                ],
              ),
            );
          }),
    );
  }
}
