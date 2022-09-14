import 'dart:math';
import 'package:flutter/material.dart';
import 'package:heads_tails/home.dart';

class Result extends StatefulWidget {

 String coinResult;
 Result(this.coinResult);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(97, 189, 140, 1),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/" + widget.coinResult),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  //Image.asset("images/" + widget.coinResult),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Image.asset("images/botao_voltar.png"),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}