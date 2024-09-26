import 'package:flutter/material.dart';
import 'package:flutter_batch5/page8.dart';

class Screen8 extends StatefulWidget {
  Screen8({super.key});

  @override
  State<Screen8> createState() => _Screen8State();
}

class _Screen8State extends State<Screen8> {
  final _txtnumber = TextEditingController();
  String sol = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Screen9(),
                  ),
                );
              },
              icon: Icon(Icons.arrow_forward)),
        ],
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Multiplication Table",
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 25,
                    fontWeight: FontWeight.w400),
              ),
              Container(
                width: 200,
                margin: EdgeInsets.all(20),
                child: TextField(
                  controller: _txtnumber,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Enter a Number",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  int number = int.parse(_txtnumber.text);
                  int multi = 0;
                  sol = "";
                  for (int i = 0; i <= 10; i++) {
                    multi = i * number;
                    sol += "$i x $number = $multi \n";
                  }
                  setState(() {
                    sol;
                  });
                },
                child: Text("Calculate"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    sol = "";
                    _txtnumber.text = "";
                  });
                },
                child: Text("Clear"),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.all(40),
                child: Divider(
                  thickness: 5,
                  color: Colors.black,
                ),
              ),
              Text("$sol"),
            ],
          ),
        ),
      ),
    );
  }
}
