import 'package:flutter/material.dart';

class Screen12 extends StatefulWidget {
  const Screen12({super.key});

  @override
  State<Screen12> createState() => _Screen12State();
}

class _Screen12State extends State<Screen12> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
      ),
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              Text(
                "Gender Selection",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.indigo,
                ),
              ),
              RadioListTile(
                title: Text("Male"),
                value: "Male",
                groupValue: gender,
                onChanged: (String? value) {
                  setState(() {
                    gender = value;
                  });
                },
              ),
              RadioListTile(
                title: Text("Female"),
                value: "Female",
                groupValue: gender,
                onChanged: (String? value) {
                  setState(() {
                    gender = value;
                  });
                },
              ),
              RadioListTile(
                title: Text("others"),
                value: "Others",
                groupValue: gender,
                onChanged: (String? value) {
                  setState(() {
                    gender = value;
                  });
                },
              ),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      duration: Duration(
                        milliseconds: 3000,
                      ),
                      action: SnackBarAction(
                        label: "GoBack",
                        onPressed: () {},
                      ),
                      elevation: 10,
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.indigo,
                      content: Text("Your selected Gender is $gender"),
                    ),
                  );
                },
                child: Text("Submit"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
