import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ask Me Anything'
          ),
          backgroundColor: Colors.black12,
        ),
        body: DecisionPage(),
      ),
    ),
  );
}
class DecisionPage extends StatefulWidget {
  @override
  _DecisionPageState createState() => _DecisionPageState();
}

class _DecisionPageState extends State<DecisionPage> {
  @override
  Widget build(BuildContext context) {
    int ballno;
    return Center(
      child: Expanded(
        child: FlatButton(
          child: Image(
            image: AssetImage('images/ball$ballno.png'),
          ),
          onPressed:() {
            setState(() {
              ballno = Random().nextInt(5)+1;
            }
            );
          }
        ),
      ),
    );
  }
}

