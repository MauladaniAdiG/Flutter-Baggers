import 'package:app/models/bagitem.dart';
import 'package:app/models/item.dart';
import 'package:app/util/size.dart';
import 'package:app/util/texthelper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool checkReadMore = false;
  bool darkMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? Color(0xFF121212) : Colors.white,
      appBar: AppBar(
        backgroundColor: darkMode ? Color(0xFF121212) : Colors.white,
        title: Text(
          'Baggers',
          style: styleText(18, darkMode ? Colors.white : Colors.black, null),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.people,
              color: darkMode ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(
                'Dark Mode',
                style: styleText(14, darkMode ? Colors.white : Colors.black,
                    FontWeight.bold),
              ),
              Switch(
                  value: darkMode,
                  onChanged: (bool value) {
                    setState(() {
                      darkMode = value;
                    });
                  })
            ]),
            categoryBag(),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                'Most Popular Bags',
                style:
                    styleText(14, darkMode ? Colors.white : Colors.black, null),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            popularItems(),
          ],
        ),
      )),
    );
  }

  Widget categoryBag() {
    return Container(
        height: 140,
        child: ListView.builder(
            itemCount: BagItem.bagItems.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15, top: 10),
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          color: BagItem.bagItems[index].color,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                              image:
                                  AssetImage(BagItem.bagItems[index].image))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: Text(
                        BagItem.bagItems[index].name,
                        style: styleText(
                            14, darkMode ? Colors.white : Colors.black, null),
                      ),
                    )
                  ],
                ),
              );
            }));
  }

  Widget popularItems() {
    return Container(
      height: 250,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: BagItem.bagItems.length,
          itemBuilder: (BuildContext context, int i) {
            return Container(
              margin: EdgeInsets.only(right: 15, left: 2),
              width: sizeWidth(context) <= 320
                  ? 120
                  : sizeWidth(context) <= 360
                      ? 160
                      : sizeWidth(context) <= 480
                          ? 180
                          : 200,
              height: sizeWidth(context) <= 320
                  ? 150
                  : sizeWidth(context) <= 360
                      ? 180
                      : sizeWidth(context) <= 480
                          ? 210
                          : 250,
              decoration: BoxDecoration(
                  color: BagItem.bagItems[i].color,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(BagItem.bagItems[i].image))),
              child: InkWell(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(BagItem.bagItems[i].name),
                          ),
                          Container(
                            child: Text(BagItem.bagItems[i].price),
                          )
                        ],
                      ),
                      Icon(Icons.shopping_cart, size: 20, color: Colors.black)
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
