import 'package:flutter/material.dart';

class TicTacToe extends StatefulWidget {
  const TicTacToe({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TicTacToeState createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToe> {
  List<String> board = List.filled(9, '');
  bool isPlayerX = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Tic Tac Toe',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GridView.builder(
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 50, crossAxisCount: 3, mainAxisSpacing: 50),
            itemBuilder: (BuildContext context, int index) {
              return ElevatedButton(
                child: Text(
                  board[index],
                  style: const TextStyle(fontSize: 32.0),
                ),
                onPressed: () {
                  setState(() {
                    if (board[index] == '') {
                      board[index] = isPlayerX ? 'X' : 'O';
                      isPlayerX = !isPlayerX;
                    }
                  });
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
