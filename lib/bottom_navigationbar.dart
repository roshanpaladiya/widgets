import 'package:flutter/material.dart';
import 'package:widget_practice/simple_ui.dart';
import 'package:widget_practice/textfeild.dart';
import 'package:widget_practice/tic_tac_game_demo.dart';
import 'drop_down_button.dart';

class BottomNavigationbarDemo extends StatefulWidget {
  const BottomNavigationbarDemo({super.key});

  @override
  State<BottomNavigationbarDemo> createState() =>
      _BottomNavigationbarDemoState();
}

class _BottomNavigationbarDemoState extends State<BottomNavigationbarDemo> {
  int selectedbutton = 0;
  List screen = [
    const Textfield(),
    const TicTacToe(),
    const dropdownbutton_demo(),
    const Simpleui(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedbutton = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: selectedbutton,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      body: screen[selectedbutton],
    );
  }
}
