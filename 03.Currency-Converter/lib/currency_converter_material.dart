import 'package:flutter/material.dart';

class CurrencyConverterMaterialHomePage extends StatelessWidget {
  const CurrencyConverterMaterialHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.indigo,
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              '0',
              style: TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
            TextField(
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                hintText: "please enter the amount in USD",
                hintStyle: TextStyle(color: Colors.white60),
                prefixIcon: Icon(Icons.monetization_on),
                prefixIconColor: Colors.white60,
                filled: true,
                fillColor: Colors.black,
              ),
            ),
          ]),
        ));
  }
}
