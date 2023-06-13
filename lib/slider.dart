import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  const SliderDemo({super.key});

  @override
  State<SliderDemo> createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double slidervalue = 0;
  int text = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            Slider(
                min: 0,
                max: 20,
                label: "$slidervalue",
                divisions: 10,
                value: slidervalue,
                onChanged: (val) {
                  setState(() {
                    slidervalue = val;
                    text = val.toInt();
                  });
                }),
            Center(
              child: Text(text.toString()),
            ),
          ],
        ),
      ),
    );
  }
}
