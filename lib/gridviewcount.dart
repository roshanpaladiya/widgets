import 'package:flutter/material.dart';


class GridviewCountDemo extends StatefulWidget {
  const GridviewCountDemo({super.key});

  @override
  State<GridviewCountDemo> createState() => _GridviewCountDemoState();
}

class _GridviewCountDemoState extends State<GridviewCountDemo> {
  List<String> images = [
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter GridView Demo"),
          backgroundColor: Colors.red,
        ),
        body: Container(
          padding: const EdgeInsets.all(12.0),
          child: GridView.builder(
            itemCount: images.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
            itemBuilder: (BuildContext context, int index) {
              return Image.network(images[index]);
            },
          ),
        ),
      ),
    );
  }
}
