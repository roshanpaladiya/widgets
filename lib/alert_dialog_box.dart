import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogExample extends StatefulWidget {
  const AlertDialogExample({super.key});

  @override
  State<AlertDialogExample> createState() => _AlertDialogExampleState();
}

class _AlertDialogExampleState extends State<AlertDialogExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  // barrierColor: Colors.pinkAccent,
                  // barrierDismissible: false,
                  // barrierLabel: 'hello',
                  // useSafeArea: true,
                  // useRootNavigator: true,
                  // routeSettings: const RouteSettings(
                  //   name: 'hello world',
                  // ),
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text(
                        'Welcome'), // To display the title it is optional
                    content: const Text(
                        'Roshan Paladiya'), // Message which will be pop up on the screen                             // Action widget which will provide the user to acknowledge the choice
                    actions: [
                      MaterialButton(
                        textColor: Colors.black,
                        onPressed:
                            () {}, // function used to perform after pressing the button
                        child: const Text('CANCEL'),
                      ),
                      MaterialButton(
                        textColor: Colors.black,
                        onPressed: () {},
                        child: const Text('ACCEPT'),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('Alert Dialog'),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => SimpleDialog(
                    title: const Text('Roshan Paladiya'),
                    children: [
                      SimpleDialogOption(
                        onPressed: () {},
                        child: const Text('Option 1'),
                      ),
                      SimpleDialogOption(
                        onPressed: () {},
                        child: const Text('Option 2'),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('Simple Dialog'),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const CupertinoAlertDialog(
                    title: Text("Roshan Paladiya"),
                    content: Text("Wel Come"),
                    actions: [
                      CupertinoDialogAction(
                        child: Text(
                          "No",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      CupertinoDialogAction(
                        child: Text(
                          "Yes",
                          style: TextStyle(color: Colors.green),
                        ),
                      )
                    ],
                  ),
                );
              },
              child: const Text('Cupertino Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
