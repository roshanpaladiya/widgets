import 'package:flutter/material.dart';
import 'package:jumping_dot/jumping_dot.dart';

class Buttons extends StatefulWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
       child: JumpingDots(
         color: Colors.black,
         radius: 10,
         numberOfDots: 3,
        animationDuration: const Duration(milliseconds: 200),
       ),
     ),
    );
  }
}
