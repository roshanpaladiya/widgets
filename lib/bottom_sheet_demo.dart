import 'package:flutter/material.dart';

class BottomSheetDemo extends StatefulWidget {
  const BottomSheetDemo({super.key});

  @override
  State<BottomSheetDemo> createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              // backgroundColor: Colors.yellow,
              barrierColor: Colors.pink,
              elevation: 10,
              enableDrag: true,
              // isDismissible: false,
              isScrollControlled: true,
              useRootNavigator: true,
              useSafeArea: false,
              builder: (context) {
                return Container(
                  height: 200,
                  color: Colors.teal,
                  child: const Text('jaydeep'),
                );
              },
            );
          },
          child: const Text("jaydeep"),
        ),
      ),
    );
  }
}





