import 'package:flutter/material.dart';
import 'package:widget_practice/drop_down_button.dart';
import 'package:widget_practice/listview_seprate.dart';
import 'listview_builder.dart';

class TabBarDemo extends StatefulWidget {
  const TabBarDemo({super.key});

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tabs Demo'),
          actions: [
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Row(
                    children: const [
                      Icon(Icons.account_circle),
                      Text('Roshan'),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    children: const [
                      Icon(Icons.add_a_photo),
                      Text('Paladiya'),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    children: const [
                      Icon(Icons.add_a_photo),
                      Text('Jaydip'),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    children: const [
                      Icon(Icons.add_a_photo),
                      Text('Sahil'),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    children: const [
                      Icon(Icons.add_a_photo),
                      Text('Axay'),
                    ],
                  ),
                ),
              ],
              color: Colors.cyanAccent,
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.directions_car),
              ),
              Tab(
                icon: Icon(Icons.directions_transit),
              ),
              Tab(
                icon: Icon(Icons.directions_bike),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            listview_builder(),
            Listview_seprate(),
            dropdownbutton_demo(),
          ],
        ),
      ),
    );
  }
}

