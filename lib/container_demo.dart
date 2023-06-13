import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 700,
        width: 450,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.orange,
           
            ),
          ],
        ),
      ),
      // body: Center(
      //   child: Container(
      //     height: 200,
      //     width: 200,
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(100),
      //       gradient: const LinearGradient(
      //         begin: Alignment.topLeft,
      //         end: Alignment.bottomRight,
      //         colors: [
      //           Colors.green,
      //           Colors.yellow,
      //           Colors.red,
      //           Colors.blue,
      //           Colors.purple
      //         ],
      //       ),
      //       border: Border.all(color: Colors.black, width: 5),
      //       boxShadow: const [
      //         BoxShadow(
      //           blurRadius: 100,
      //           spreadRadius: 50,
      //           color: Colors.teal,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
