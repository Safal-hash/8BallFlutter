import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(const eight_ball_home());
}

class eight_ball_home extends StatelessWidget {
  const eight_ball_home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Magic 8 Ball",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
          backgroundColor: Colors.redAccent,

        ),
        body: const eight_ball_body(),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}

class eight_ball_body extends StatefulWidget {
  const eight_ball_body({Key? key}) : super(key: key);

  @override
  State<eight_ball_body> createState() => _eight_ball_bodyState();
}

class _eight_ball_bodyState extends State<eight_ball_body> {
  int ball_number = 1;

  void clicked() {
    ball_number = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('images/ball$ball_number.png'),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                clicked();
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightGreen,
            ),
            child: const Text(
              "Click Here!",
              style: TextStyle(color: Colors.black87),
            ),
          ),
        ),
      ],
    );
  }
}
