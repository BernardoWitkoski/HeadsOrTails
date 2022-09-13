import 'dart:math';

import 'package:flutter/material.dart';
import 'package:heads_tails/result.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  //void _jogar() {
  //  Navigator.push(context, MaterialPageRoute(builder: (context) => Result()));
  //}

  var _imageApp;

  void _flip() {
    var coin = ["moeda_cara.png", "moeda_coroa.png"];
    int randomNumber = Random().nextInt(coin.length);
    var result = coin[randomNumber];

    // switch (result) {
    //   case "cara":
    //     setState(() {
    //       _imageApp = AssetImage("images/moeda_cara.png");
    //     });
    //     break;
    //   case "coroa":
    //     setState(() {
    //       _imageApp = AssetImage("images/moeda_coroa.png");
    //     });
    //     break;
    // }
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
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Result())),
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