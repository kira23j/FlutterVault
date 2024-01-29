import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text("dicee"),
            backgroundColor: Colors.red,
          ),
          body: DicePage(),
        )
    );
  }
}
class DicePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                child: Image(
                  image: AssetImage("images/dice1.png"),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image(
          image: AssetImage("images/dice1.png"),
              ),
            ),
          ),

        ],
      ),
    );
  }
}