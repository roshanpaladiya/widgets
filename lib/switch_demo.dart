import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  const SwitchDemo({super.key});

  @override
  State<SwitchDemo> createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool rp = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Demo'),
        leading: const Icon(Icons.ac_unit),
        actions: const [
          Icon(Icons.access_time_sharp),
          Icon(Icons.account_balance_wallet_outlined),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(15),
          child: ListTile(
            leading: Icon(Icons.accessibility_new_rounded),
            title: Text('DEMO'),
          ),
        ),
      ),
      body: Column(
        children: [
          CupertinoSwitch(
              value: rp,
              onChanged: (val) {
                setState(() {
                  rp = !rp;
                });
              }),

          FloatingActionButton.extended(
            onPressed: () {},
            icon: const Icon(Icons.camera),
            backgroundColor: Colors.green,
            label: const Text('hello'),
          ),

          Switch(
              activeColor: Colors.black,
              activeTrackColor: Colors.orange,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              inactiveTrackColor: Colors.pink,
              splashRadius: 2,
              activeThumbImage: Image.network(
                      'https://media.istockphoto.com/id/1403250505/photo/golden-bell-ringing-for-application-notification-alert-on-purple-background-concept-by-3d.jpg?b=1&s=170667a&w=0&k=20&c=NI5aORshJRsNPtmmZ1Qlpj-bXUP9B3Vu-ZxJi5HISoo=')
                  .image,
              value: rp,
              onChanged: (val) {
                setState(() {
                  rp = !rp;
                });
              }),
        ],
      ),
    );
  }
}
