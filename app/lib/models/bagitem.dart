import 'package:flutter/material.dart';

class BagItem {
  String name;
  String price;
  Color color;
  String image;
  BagItem({this.name, this.price, this.color, this.image});

  static List<BagItem> bagItems = [
    BagItem(
        name: 'Slingbag',
        price: 'Rp 250.000',
        color: Color(0xFFffd5cd),
        image: 'assets/images/slingbag.png'),
    BagItem(
        name: 'Ransel',
        price: 'Rp 200.000',
        color: Color(0xFFefbbcf),
        image: 'assets/images/ransel.png'),
    BagItem(
        name: 'Handbag',
        price: 'Rp 300.000',
        color: Color(0xFFb2deec),
        image: 'assets/images/handbag.png'),
    BagItem(
        name: 'Travelling',
        price: 'Rp 400.000',
        color: Color(0xFF9ad3bc),
        image: 'assets/images/travelling.png'),
    BagItem(
        name: 'Drawstring',
        price: 'Rp 150.000',
        color: Color(0xFFc56183),
        image: 'assets/images/drawstring.png')
  ];
}
