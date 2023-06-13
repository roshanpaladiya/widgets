import 'package:flutter/material.dart';

class DrawerDemo extends StatefulWidget {
  const DrawerDemo({super.key});

  @override
  State<DrawerDemo> createState() => _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // endDrawer: Icon(Icons.home),
      appBar: AppBar(
        title: const Text('Drawer'),
      ),
      body: const Center(
        child: Text('My Page!'),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        elevation: 10,
        // surfaceTintColor: Colors.red,
        width: 250,
        child: ListView(
          children: [
            DrawerHeader(
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green),
                accountName: const Text("Roshan Paladiya"),
                accountEmail: const Text(
                  "roshanpaladiya2004@gmail.com",
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              title: const Text('Hello'),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              title: const Text('Hello'),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              title: const Text('Hello'),
            ),
          ],
        ),
      ),
    );
  }
}
