import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_batch5/page11.dart';

class Screen11 extends StatefulWidget {
  const Screen11({super.key});

  @override
  State<Screen11> createState() => _Screen11State();
}

class _Screen11State extends State<Screen11> {
  final _number = TextEditingController();
  final _start = TextEditingController();
  final _end = TextEditingController();
  String armArray = "";
  String Solution = "";

  bool isArmStrong(int value, int len) {
    int rem = 0;
    int temp = value;
    int arm = 0;
    while (value != 0) {
      rem = value % 10;
      arm += (pow(rem, len).toInt());
      value = value ~/ 10;
    }
    return arm == temp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Screen12(),
                ),
              );
            },
            icon: Icon(Icons.arrow_forward),
          ),
        ],
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "ArmStrong Number Checking",
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 139, 72),
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                width: 200,
                child: Divider(
                  thickness: 3,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: TextField(
                  controller: _number,
                  decoration: InputDecoration(
                    labelText: "Enter a number",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 101, 3),
                  foregroundColor: Colors.white,
                  shadowColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {
                  int number = int.parse(_number.text);
                  int temp = number;
                  int rem = 0;
                  Solution = "";
                  int arm = 0;
                  while (number != 0) {
                    rem = number % 10;
                    arm = arm + (rem * rem * rem);
                    number = number ~/ 10;
                  }
                  setState(() {
                    Solution = (arm == temp)
                        ? "The Number $temp is a Armstrong Number"
                        : "The Number $temp is not a Armstrong Number";
                  });
                },
                child: Text("Check"),
              ),
              Text("$Solution"),
              Divider(
                thickness: 3,
                color: Colors.black,
              ),
              SizedBox(
                height: 80,
              ),
              Text(
                "Armstrong Numbers In Between",
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 139, 72),
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                width: 200,
                child: Divider(
                  thickness: 3,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 200,
                    child: TextField(
                      controller: _start,
                      decoration: InputDecoration(
                        labelText: "Enter Starting Limit",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Container(
                    width: 200,
                    child: TextField(
                      controller: _end,
                      decoration: InputDecoration(
                        labelText: "Enter Ending Limit",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 101, 3),
                  foregroundColor: Colors.white,
                  shadowColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {
                  int start = int.parse(_start.text);
                  int end = int.parse(_end.text);
                  armArray = "";
                  for (int i = start; i <= end; i++) {
                    int len = i.toString().length.toInt();
                    if (isArmStrong(i, len)) {
                      setState(() {
                        armArray += "$i \n";
                      });
                    }
                  }
                },
                child: Text("Generate"),
              ),
              Text("$armArray")
            ],
          ),
        ),
      ),
    );
  }
}
