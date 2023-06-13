import 'package:flutter/material.dart';

class mediaquery extends StatefulWidget {
  const mediaquery({super.key});

  @override
  State<mediaquery> createState() => _mediaqueryState();
}

class _mediaqueryState extends State<mediaquery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          " Media Query",
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.82,
        width: MediaQuery.of(context).size.width * 0.42,
        color: Colors.purple,
      ),
    );
  }
}
