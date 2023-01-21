import 'package:dice/dice.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: "dice",
    home: Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        title: const Text(
          "Dice",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: const DiceApp(),
    ),
  ));
}
