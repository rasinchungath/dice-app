import 'package:flutter/material.dart';
import 'dart:math';

class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftDicenumber = 1;
  int rightDiceNumber = 1;
  DiceNumber() {
    setState(() {
      leftDicenumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: TextButton(
                onPressed: () {
                  DiceNumber();
                },
                child: Image(
                  image: AssetImage("assets/dices/dice$rightDiceNumber.png"),
                ),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                DiceNumber();
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Image(
                  image: AssetImage("assets/dices/dice$leftDicenumber.png"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
