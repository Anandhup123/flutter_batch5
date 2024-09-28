import 'package:flutter/material.dart';
import 'package:flutter_batch5/page10.dart';

class Screen12 extends StatefulWidget {
  const Screen12({super.key});

  @override
  State<Screen12> createState() => _Screen12State();
}

class _Screen12State extends State<Screen12> {
  String? gender;
  String? ans;
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
              const Text(
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
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "find out odd one",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.indigo,
                ),
              ),
              RadioListTile(
                title: Text("18"),
                value: "wrong1",
                groupValue: ans,
                onChanged: (String? value) {
                  setState(() {
                    ans = value;
                  });
                },
              ),
              RadioListTile(
                title: Text("19"),
                value: "correct",
                groupValue: ans,
                onChanged: (String? value) {
                  setState(() {
                    ans = value;
                  });
                },
              ),
              RadioListTile(
                title: Text("20"),
                value: "wrong2",
                groupValue: ans,
                onChanged: (String? value) {
                  setState(() {
                    ans = value;
                  });
                },
              ),
              RadioListTile(
                title: Text("21"),
                value: "wrong3",
                groupValue: ans,
                onChanged: (String? value) {
                  setState(() {
                    ans = value;
                  });
                },
              ),
              TextButton(
                onPressed: () {
                  if (ans == "correct") {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Screen11(),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: Colors.red,
                      behavior: SnackBarBehavior.floating,
                      content: Text("Wrong Answer Try Again"),
                    ));
                  }
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
