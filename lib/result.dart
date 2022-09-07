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
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: _voltar,
                    child: Image.asset("images/botao_jogar.png"),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
