import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text(
              'Ask Me Anything',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.blue.shade900,
          ),
          body: BallPage(),
        ),
      ),
    );

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  @override
  int Number = 1;
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              Number = Random().nextInt(5) + 1;
            });
            print('I got clicked');
          },
          child: Image.asset('images/ball$Number.png'),
        ),
      ),
    ));
  }
}
