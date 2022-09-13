import 'dart:math';
import 'package:flutter/material.dart';
import 'package:heads_tails/home.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {

  void _voltar() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
  }
  
  var _imageApp;

  void _flip() {
    var coin = ["cara", "coroa"];
    int randomNumber = Random().nextInt(coin.length);
    var result = coin[randomNumber];

    switch (result) {
      case "cara":
        setState(() {
          _imageApp = AssetImage("images/moeda_cara.png");
        });
        break;
      case "coroa":
        setState(() {
          _imageApp = AssetImage("images/moeda_coroa.png");
        });
        break;
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
              image: _imageApp,
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: _voltar,
                    child: Image.asset("images/botao_voltar.png"),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}