import 'package:flutter/material.dart';

class listview_builder extends StatefulWidget {
  const listview_builder({super.key});

  @override
  State<listview_builder> createState() => _listview_builderState();
}

class _listview_builderState extends State<listview_builder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Practice"),
        ),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return const ListTile(
            leading: Icon(Icons.account_tree_outlined),
          );
        },
      ),
    );
  }
}
