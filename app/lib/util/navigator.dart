import 'package:flutter/material.dart';

void push(BuildContext context, Object objectName) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => objectName));
}

void pushReplacement(BuildContext context, Object objectName) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => objectName));
}

void pop(BuildContext context, Object objectName) {
  Navigator.pop(context);
}

void pushAndRemoveUntil(BuildContext context, Object objectName) {
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => objectName),
      (Route<dynamic> route) => false);
}
