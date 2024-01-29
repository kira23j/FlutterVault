import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.lightBlueAccent,
          appBar: AppBar(
            title: Center(child: Text("Dice-Hub")),
            backgroundColor: Colors.blueAccent,
          ),
          body: DicePage(),
        )
    );
  }
}
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber=1;
  var rightDiceNumber=1;
  void changeDiceFace(){
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context){
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child:OutlinedButton(
                  onPressed:(){
                    changeDiceFace();
                  },
                  child:Image.asset('images/dice$leftDiceNumber.png')
              )
          ),
          Expanded(
              child:OutlinedButton(
                  onPressed:(){
                    changeDiceFace();
                  },
                  child:Image.asset('images/dice$rightDiceNumber.png')
              )
          ),
        ],
      ),
    );
  }
}


