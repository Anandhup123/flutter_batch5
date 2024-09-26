import 'package:flutter/material.dart';
import 'package:flutter_batch5/page6.dart';

class Screen6 extends StatefulWidget {
  Screen6({super.key});

  @override
  State<Screen6> createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Screen7(),
                  ),
                );
              },
              icon: Icon(Icons.arrow_forward)),
        ],
        backgroundColor: Colors.purple,
        title: Text("Project 1"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "You Clicked the Button",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                count.toString(),
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purpleAccent,
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
