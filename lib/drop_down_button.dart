import 'package:flutter/material.dart';

class dropdownbutton_demo extends StatefulWidget {
  const dropdownbutton_demo({super.key});

  @override
  State<dropdownbutton_demo> createState() => _dropdownbutton_demoState();
}

class _dropdownbutton_demoState extends State<dropdownbutton_demo> {
  String? selectedCity;
  List city = [
    "surat",
    "Ahemdabad",
    "Goa",
    "Amreli",
    "Bhavnagar",
    "Div",
    "Bharuch",
    "Vadodra",
    "Gandhinagar",
    "Kutch",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DropDownButton"),
      ),
      body: Center(
        child: DropdownButton(
            hint: const Text('select city'),
            value: selectedCity,
            items: List.generate(
              city.length,
              (index) => DropdownMenuItem(
                value: city[index],
                child: Text(city[index]),
                
              ),
            ),
            onChanged: (val) {
              setState(() {
                selectedCity = val.toString();
              });
            }),

        // child: DropdownButton(
        //     hint: const Text("City"),
        //     value: selectedCity,
        //     items: List.generate(
        //       city.length,
        //       (index) => DropdownMenuItem(
        //         value: city[index],
        //         child: Text(city[index]),
        //       ),
        //     ),
        //     onChanged: (val) {
        //       setState(() {
        //         selectedCity = val.toString();
        //       });
        //     }),
      ),
    );
  }
}
