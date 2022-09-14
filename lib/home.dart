import 'dart:math';

import 'package:flutter/material.dart';
import 'package:heads_tails/result.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<String> options = ["moeda_cara.png", "moeda_coroa.png"];
  late String coinResult;

  void _coinSide() {
    int randomNumber = Random().nextInt(options.length);
    coinResult = options[randomNumber];
    Navigator.push(context, MaterialPageRoute(builder: (context) => Result(coinResult)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(97, 189, 140, 1),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/logoC.png"),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: _coinSide,
                    child: Image.asset("images/botao_jogar.png"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
