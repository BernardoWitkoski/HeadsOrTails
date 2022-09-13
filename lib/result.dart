import 'dart:math';
import 'package:flutter/material.dart';
import 'package:heads_tails/home.dart';

class Result extends StatefulWidget {
  const Result(String Function() coinSide, {Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {

  var _imageApp;

  var options = ["moeda_cara.png", "moeda_coroa.png"];
  late String coinResult;

  String coinSide() {
    int randomNumber = Random().nextInt(options.length);
    return coinResult = options[randomNumber];
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
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Home())),
                    child: Image.asset("images/botao_voltar.png"),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}