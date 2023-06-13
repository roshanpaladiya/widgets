import 'package:flutter/material.dart';

class Simpleui extends StatefulWidget {
  const Simpleui({super.key});

  @override
  State<Simpleui> createState() => SimpleuiState();
}

class SimpleuiState extends State<Simpleui> {
  String man = 'man';
  String woman = 'woman';
  String gender = '';
  double slidervalue1 = 18;
  double slidervalue2 = 0;
  double slidervalue3 = 0;
  double slidervalue4 = 0;
  int text1 = 18;
  int text2 = 0;
  int text3 = 0;
  int text4 = 0;
  String? selectedCity;
  List city = [
    "Surat",
    "Ahemdabad",
    "Goa",
    "Amreli",
    "Bhavnagar",
    "Div",
    "Bharuch",
    "Vadodra",
    "Gandhinagar",
  ];
  String? selectstatus;
  List status = [
    "Single",
    "Divorced",
    "Widow",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Set your preference"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 40, top: 50),
                  child: Text(
                    "LOOKING FOR",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 30),
              child: Row(
                children: [
                  Radio(
                      activeColor: Colors.green,
                      value: man,
                      groupValue: gender,
                      onChanged: (val) {
                        setState(() {
                          gender = val.toString();
                        });
                      }),
                  const Text(
                    "A Man",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 30),
                  Radio(
                      activeColor: Colors.green,
                      value: woman,
                      groupValue: gender,
                      onChanged: (val) {
                        setState(() {
                          gender = val.toString();
                        });
                      }),
                  const Text(
                    "A Woman",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 40, top: 30),
                  child: Text(
                    "AGE BETWEEN",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Slider(
                min: 18,
                max: 60,
                divisions: 10,
                activeColor: Colors.green,
                inactiveColor: Colors.black,
                label: "${slidervalue1.toInt()}",
                value: slidervalue1,
                onChanged: (val) {
                  setState(() {
                    slidervalue1 = val;
                    text1 = val.toInt();
                  });
                }),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 40, top: 40),
                  child: Text(
                    "HEIGHT",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Slider(
                min: 0,
                max: 10,
                divisions: 10,
                activeColor: Colors.green,
                inactiveColor: Colors.black,
                label: "$slidervalue2 cm".toString(),
                value: slidervalue2,
                onChanged: (val) {
                  setState(() {
                    slidervalue2 = val;
                    text2 = val.toInt();
                  });
                }),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 40, top: 40),
                  child: Text(
                    "CHILDREN",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Slider(
                min: 0,
                max: 10,
                divisions: 10,
                activeColor: Colors.green,
                inactiveColor: Colors.black,
                label: "$slidervalue3",
                value: slidervalue3,
                onChanged: (val) {
                  setState(() {
                    slidervalue3 = val;
                    text3 = val.toInt();
                  });
                }),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 40, top: 40),
                  child: Text(
                    "STATUS",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 40, right: 40),
              width: double.infinity,
              child: DropdownButton(
                isExpanded: true,
                hint: const Text("Select Status"),
                value: selectstatus,
                items: List.generate(
                  status.length,
                  (index) => DropdownMenuItem(
                    value: status[index],
                    child: Text(status[index]),
                  ),
                ),
                onChanged: (val) {
                  setState(
                    () {
                      selectstatus = val.toString();
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 50),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 40, top: 20),
                  child: Text(
                    "LOCATION",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 40, right: 40),
              width: double.infinity,
              child: DropdownButton(
                isExpanded: true,
                hint: const Text("Select City"),
                value: selectedCity,
                items: List.generate(
                  city.length,
                  (index) => DropdownMenuItem(
                    value: city[index],
                    child: Text(city[index]),
                  ),
                ),
                onChanged: (val) {
                  setState(
                    () {
                      selectedCity = val.toString();
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 70),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Apply Preference",
                  style:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
