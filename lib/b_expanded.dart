import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      //return Column /Row and look for changes
      children: <Widget>[
        Expanded(
          child: Image(
            /*the widget over flow error use expanded widget class*/
            //width: 200,
            image: AssetImage('images/dice1.png'),
          ),
        ),
      ],
    );
  }
}
