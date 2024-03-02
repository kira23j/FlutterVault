import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI Calculator"),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(child: ReusableCode(Color.fromARGB(255, 4, 1, 41))),
                Expanded(child: ReusableCode(Color.fromARGB(255, 4, 1, 41))),
              ],
            )),
            Expanded(child: ReusableCode(Color.fromARGB(255, 4, 1, 41))),
            Expanded(child: ReusableCode(Color.fromARGB(255, 4, 1, 41))),
          ],
        ));
  }
}

class ReusableCode extends StatelessWidget {
  ReusableCode(@required this.colour);
  Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(12.0)),
    );
  }
}
