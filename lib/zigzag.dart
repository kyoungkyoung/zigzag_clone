import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_hw/ad_widget.dart';
import 'package:ui_hw/clothes.dart';
import 'package:ui_hw/gray_icon.dart';

class Zigzag extends StatefulWidget {
  Zigzag({Key key}) : super(key: key);

  @override
  _ZigzagState createState() => _ZigzagState();
}

class _ZigzagState extends State<Zigzag> {
  final _adItems = [
    {
      'title': '예스아이씨로 끝내는 일주일 코디코민',
      'subTitle': '같은 후드티, 색다른 스타일링',
      'img': 'img/2.JPG',
    },
    {
      'title': '여자 가을코디',
      'subTitle': '10만원 이하 템으로 2주 돌려입기',
      'img': 'img/1.JPG',
    }
  ];

  final _cItems = [
    {'clothesImg': 'img/6.JPG', 'cTitle': '슬로우앤드', 'cPrice': '29,800'},
    {'clothesImg': 'img/7.JPG', 'cTitle': '고고싱', 'cPrice': '11,600'},
    {'clothesImg': 'img/8.JPG', 'cTitle': '데쥬', 'cPrice': '15,500'},
    {'clothesImg': 'img/9.JPG', 'cTitle': '요블림', 'cPrice': '12,000'},
  ];

  @override
  Widget build(BuildContext context) {
    final pageController = PageController(initialPage: 0);

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'zigzag',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'SB Agro',
            ),
          ),
          backgroundColor: Colors.white,
          actions: [
            Material(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Ink(
                  decoration: const ShapeDecoration(
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(),
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      )),
                ),
              ),
            ),
            const GrayIcon(),
            const GrayIcon(),
            const GrayIcon(),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_basket,
                  color: Colors.pink,
                ))
          ],
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Home'),
              Tab(
                  icon: Text('Brand',
                      style: TextStyle(fontStyle: FontStyle.italic))),
              Tab(text: '베스트'),
              Tab(text: '혜택'),
            ],
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,

            //_mainMenu.map((e) => Tab(text:e)).toList(),
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                //광고
                AspectRatio(
                  aspectRatio: 3 / 1,
                  child: PageView(
                      scrollDirection: Axis.horizontal,
                      controller: pageController,
                      children: _adItems
                          .map((e) => Advertise(
                                title: e['title'],
                                subTitle: e['subTitle'],
                                img: e['img'],
                              ))
                          .toList()),
                ),

                //무료배송
                Card(
                  margin: EdgeInsets.all(10),
                  elevation: 5,
                  child: Column(
                    children: const [
                      ListTile(
                        selectedTileColor: Colors.white,
                        tileColor: Colors.white,
                        title: Text('무료배송, 빠른도착'),
                        subtitle: Text('밤 12시전 주문시, 모레도착'),
                        trailing: Icon(Icons.arrow_forward_outlined),
                      ),
                    ],
                  ),
                ),

                //추천
                Container(
                  child: const Text(
                    '당신을 위한 추천 아이템',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  margin: EdgeInsets.all(15),
                ),

                //이미지
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: GridView.count(
                        crossAxisCount: 3,
                        mainAxisSpacing: 6,
                        shrinkWrap: true,
                        children: [
                          Column(
                            children: [
                              Image(
                                image: AssetImage('img/3.JPG'),
                                width: 85,
                              ),
                              Text('데일리쥬', style: TextStyle(fontSize: 10)),
                              Text('19,800', style: TextStyle(fontSize: 12)),
                            ],
                          ),
                          Column(
                            children: const [
                              Image(
                                image: AssetImage('img/4.JPG'),
                                width: 85,
                              ),
                              Text('데일리쥬', style: TextStyle(fontSize: 10)),
                              Text('19,800', style: TextStyle(fontSize: 12)),
                            ],
                          ),
                          Column(
                            children: const [
                              Image(
                                image: AssetImage('img/5.JPG'),
                                width: 85,
                              ),
                              Text('데일리쥬', style: TextStyle(fontSize: 10)),
                              Text('19,800', style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ],
                        physics: NeverScrollableScrollPhysics(),
                      ),
                    ),

                    //물건 이미지
                    GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 30,
                      children: _cItems
                          .map((e) => Clothes(
                              clothesImg: e['clothesImg'],
                              cTitle: e['cTitle'],
                              cPrice: e['cPrice']))
                          .toList(),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                    ),
                  ],
                )
              ],
            ),
            const Center(
              child: Text('Brand'),
            ),
            const Center(
              child: Text('Best'),
            ),
            const Center(
              child: Text('Benefit'),
            )
          ],
        ),
      ),
    );
  }
}
