import 'package:flutter/material.dart';

class Textfield extends StatefulWidget {
  const Textfield({super.key});

  @override
  State<Textfield> createState() => _TextfieldState();
}

class _TextfieldState extends State<Textfield> {
  bool pass = false;
  TextEditingController name = TextEditingController();
  String e = '';
  String? error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Form"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: name,
              obscureText: true,
              keyboardType: TextInputType.name,
              onChanged: (val) {
                setState(() {
                  e = val.toString();
                  error = val.length < 10 ? 'enter valid name' : null;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.deepPurple),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                labelText: "Name",
                hintText: "Enter Your Name",
                prefixIcon: const Icon(Icons.people),
                errorText: error,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      pass = !pass;
                    });
                  },
                  icon: Icon(pass ? Icons.visibility : Icons.visibility_off),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              e = name.text;
              setState(() {});
            },
            child: const Text("Submit"),
          ),
        ],
      ),
    );
  }
}
