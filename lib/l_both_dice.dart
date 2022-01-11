import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dice App Tarun'),
        backgroundColor: Colors.redAccent,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = Random().nextInt(6)+1;
  int rightDiceNumber = Random().nextInt(6)+1;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: TextButton(
                child: Image.asset(
                  'images/dice$leftDiceNumber.png',
                ),
                onPressed: () {
                  setState(() {
                    leftDiceNumber = Random().nextInt(6) + 1;
                    rightDiceNumber = Random().nextInt(6) +1;
                    print('LeftDice: $leftDiceNumber');
                  });
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: TextButton(
                child: Image.asset(
                  'images/dice$rightDiceNumber.png',
                ),
                onPressed: () {
                  setState(() {
                    rightDiceNumber = Random().nextInt(6) +1;
                    leftDiceNumber = Random().nextInt(6) + 1;
                  });
                  //print('Right Button');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
