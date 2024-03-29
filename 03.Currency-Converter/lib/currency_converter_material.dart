import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  CurrencyConverterMaterialPage({super.key});
  State createState() => _CurrencyConverterMaterialPageState();
  late double result;
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  @override
  void initState() {
    super.initState();
    print('rebuilt');
  }

  @override
  Widget build(BuildContext context) {
    print('build fn');
    return const Scaffold();
  }
}

class CurrencyConverterMaterialHomePage extends StatelessWidget {
  CurrencyConverterMaterialHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    print('rebuilt');
    double result = 0;
    final TextEditingController textEditingController = TextEditingController();
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 2, 53, 130),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 2, 53, 130),
          elevation: 0,
          title: const Text(
            "Currency Converter",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.all(10.0),
              child: const Text(
                '0',
                style: TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                style: TextStyle(
                  color: Colors.black87,
                ),
                decoration: InputDecoration(
                  hintText: "please enter the amount in USD",
                  hintStyle: TextStyle(color: Colors.black54),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black54,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black,
                          width: 2.0,
                          style: BorderStyle.solid,
                          strokeAlign: BorderSide.strokeAlignCenter),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      )),
                ),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = double.parse(textEditingController.text);
                    });
                  },
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 2, 1, 27)),
                      foregroundColor: MaterialStatePropertyAll(Colors.white),
                      minimumSize:
                          MaterialStatePropertyAll(Size(double.infinity, 50)),
                      shape:
                          MaterialStatePropertyAll(RoundedRectangleBorder())),
                  child: const Text("Convert")),
            )
          ]),
        ));
  }
}
