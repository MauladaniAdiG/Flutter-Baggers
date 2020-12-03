import 'dart:async';

import 'package:app/models/bagitem.dart';
import 'package:app/ui/homepage.dart';
import 'package:app/util/navigator.dart';
import 'package:app/util/texthelper.dart';
import 'package:flutter/material.dart';

class FlashScreen extends StatefulWidget {
  @override
  _FlashScreenState createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      pushReplacement(context, HomePage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            BagItem.bagItems[1].image,
            width: 150,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Baggers',
            style: styleText(18, Colors.black, FontWeight.bold),
          )
        ],
      )),
    );
  }
}
