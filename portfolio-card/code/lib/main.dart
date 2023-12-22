import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown.shade300,
        appBar: AppBar(
          title: Text("micard"),
          backgroundColor: Colors.white,
        ),

        body:SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
             CircleAvatar(
               radius: 50.0,
               backgroundImage: AssetImage('Images/kira.jpg'),
             ),
                Text(
                  'Kirubel mamuye',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              Text(
                'full-stack developer',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 30.0,
                  color: Colors.cyanAccent,
                  fontWeight: FontWeight.bold,

                ),
              ),
              SizedBox(
                height: 15.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 20.0,horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                  ),
                  title: Text(
                      '+251 707654530',
                    style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Inter',
                  ),
                  ),
                ),
              ),

          Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 20.0,horizontal: 25.0),
                child: ListTile(
                    leading: Icon(
                      Icons.email,
                    ),
                  title: Text(
                    'kirubelmamuyesahle@gmail.com',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Inter',
                    ),
                  ),
                ),
              ),
          ],
         ),

        ),
      )
    );
  }
}
