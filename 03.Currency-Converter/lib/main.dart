import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'curreny pair',
      textDirection: TextDirection.rtl,
    );
  }
}