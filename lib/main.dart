import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber= 1;
  int rightDiceNumber=1;
  void changedDiceFace(){
    setState(() {
      leftDiceNumber= Random().nextInt(6)+1;
      rightDiceNumber=Random().nextInt(6)+1;
      print('left dice number = $leftDiceNumber');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(child: TextButton(
            onPressed: (){
              changedDiceFace();
            },
            child: Image.asset('images/dice$leftDiceNumber.png'
            ),
          ),
          ),
          Expanded(child: TextButton(
            onPressed: (){
              changedDiceFace();
            },
            child: Image.asset('images/dice$rightDiceNumber.png'),
          ),
          )

        ],
      ),
    );
  }
}


