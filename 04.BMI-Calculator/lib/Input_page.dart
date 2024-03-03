import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color.fromARGB(255, 162, 154, 235);
const bottomContainerColor = Color.fromARGB(255, 132, 30, 30);

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
                Expanded(child: ReusableCode(activeCardColor)),
                Expanded(child: ReusableCode(activeCardColor)),
              ],
            )),
            Expanded(child: ReusableCode(activeCardColor)),
            Expanded(child: ReusableCode(activeCardColor)),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}

class ReusableCode extends StatelessWidget {
  ReusableCode(@required this.colour);
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(12.0)),
    );
  }
}
