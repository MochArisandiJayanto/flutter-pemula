import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Container(
          child: NumberScreen(),
        )
    );
  }
}

class NumberScreen extends StatefulWidget {
  @override
  _NumberScreenState createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {
  int number = 10;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Center(
          child: Text(
            this.number.toString(),
            style: TextStyle(
                fontSize: 30
            ),
          ),
        ),
        Positioned(
          bottom: 50,
          right: 50,
          child: FloatingActionButton(
            child: Icon(Icons.plus_one),
            onPressed: () {
              setState(() {
                this.number += 1;
              });
            },
          ),
        )
      ],
    );
  }
}