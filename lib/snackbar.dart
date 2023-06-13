import 'package:flutter/material.dart';

class SnackbarDemo extends StatefulWidget {
  const SnackbarDemo({super.key});

  @override
  State<SnackbarDemo> createState() => _SnackbarDemoState();
}

class _SnackbarDemoState extends State<SnackbarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Text(" This is a Snackbar  !"),
                      duration: const Duration(seconds: 2),
                      elevation: 20,
                      showCloseIcon: true,
                      action: SnackBarAction(
                          label: 'Yes',
                          onPressed: () {
                            setState(() {});
                          }),
                    ),
                  );
                },
                child: const Text("Submit"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
