import 'package:flutter/material.dart';

class UiDemo12 extends StatefulWidget {
  const UiDemo12({super.key});

  @override
  State<UiDemo12> createState() => _UiDemo12State();
}

class _UiDemo12State extends State<UiDemo12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
                child: Column(
                  children: [
                    Row(
                      children: const [
                        SizedBox(width: 15),
                        Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                        SizedBox(width: 80),
                        Text(
                          'Net E IMS',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(width: 180),
                        Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                        SizedBox(width: 15),
                        Icon(
                          Icons.qr_code,
                          color: Colors.white,
                        ),
                        SizedBox(width: 15),
                      ],
                    ),
                    const SizedBox(height: 50),
                    Row(
                      children: [
                        const SizedBox(width: 15),
                        Container(
                          height: 50,
                          width: 50,
                          color: Colors.white,
                          child: const Icon(
                            Icons.settings,
                            color: Colors.blue,
                            size: 35,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'SUTEX BANK COLLEGE OF COMPUTER APPLICATION AND \nSCIENCE, AMROLI',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                color: Colors.red,
                child: Row(
                  children: const [
                    SizedBox(width: 10),
                    Icon(
                      Icons.notifications_off,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Practical internal evalution exam marks notice',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
