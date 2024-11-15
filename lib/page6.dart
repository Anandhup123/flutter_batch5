import 'package:flutter/material.dart';
import 'package:flutter_batch5/page7.dart';

class Screen7 extends StatefulWidget {
  Screen7({super.key});

  @override
  State<Screen7> createState() => _Screen7State();
}

class _Screen7State extends State<Screen7> {
  int number = 0;
  int lastValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Screen8(),
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
              Text(
                number.toString(),
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        number++;
                        lastValue = number;
                      });
                    },
                    child: Text("count Up"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        number--;
                        lastValue = number;
                      });
                    },
                    child: Text("count down"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        number = 0;
                      });
                    },
                    child: Text("Reset"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        number = lastValue;
                      });
                    },
                    child: Text("Preview"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
