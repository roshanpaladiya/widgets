import 'package:flutter/material.dart';

class Listview_seprate extends StatefulWidget {
  const Listview_seprate({super.key});

  @override
  State<Listview_seprate> createState() => _Listview_seprateState();
}

class _Listview_seprateState extends State<Listview_seprate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List view Seprate"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return const ListTile(
              leading: Icon(Icons.account_balance_wallet),
            );
          },
          separatorBuilder: (context, index) {
            return Container(
              height: 20,
              width: 250,
              color: Colors.cyanAccent,
            );
          },
          itemCount: 30),
    );
  }
}
