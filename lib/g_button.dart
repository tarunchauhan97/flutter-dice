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
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: ElevatedButton(
                child: Image.asset(
                  'images/dice2.png',
                ),
                onPressed: () {
                  print('Left Button');
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: RaisedButton(
                child: Image.asset(
                  'images/dice3.png',
                ),
                onPressed: () {
                  print('Right Button');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
