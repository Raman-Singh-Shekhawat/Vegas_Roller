import 'dart:ui';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: const DiceState(),
      ),
    ),
  );
}

class DiceState extends StatefulWidget {
  const DiceState({Key? key}) : super(key: key);

  @override
  State<DiceState> createState() => _DiceStateState();
}

class _DiceStateState extends State<DiceState> {
  int leftDiceNo = 1;
  int rightDiceNo = 1;
  void diceNo() {
    setState(() {
      leftDiceNo = Random().nextInt(6) + 1;
      rightDiceNo = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                diceNo();
                print('Left Button Pressed');
              },
              child: Image.asset('images/dice$leftDiceNo.png'),
            ),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  diceNo();
                  print('Right Button Pressed');
                },
                child: Image.asset('images/dice$rightDiceNo.png')),
          )
        ],
      ),
    );
  }
}
//End of Program
// End of main.dart
// Code Changes Completed
