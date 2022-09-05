import 'dart:math';
import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  
  var _resultado;

  void _flip() {
    Random random = new Random();
    int randomNumber = random.nextInt(2);

    if (randomNumber == 0) {
      setState(() {
        _resultado = AssetImage("images/moeda_cara.png");
      });
    } else if (randomNumber == 1) {
      setState(() {
        _resultado = AssetImage("images/moeda_coroa.png");
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(97, 189, 140, 1),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: _resultado,
            ),
          ],
        ));
  }
}
