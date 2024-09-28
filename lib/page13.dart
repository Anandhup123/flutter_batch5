import 'package:flutter/material.dart';
import 'package:flutter_batch5/page12.dart';

class Screen14 extends StatefulWidget {
  const Screen14({super.key});

  @override
  State<Screen14> createState() => _Screen14State();
}

class _Screen14State extends State<Screen14> {
  bool select = true;
  bool select2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SignUpForm(),
                ),
              );
            },
            icon: Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: Text("Confirm here"),
              value: select,
              onChanged: (val) {
                setState(() {
                  select = val!;
                });
              },
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: Text("Confirm here"),
              value: select2,
              onChanged: (val) {
                setState(() {
                  select2 = val!;
                });
              },
            ),
            Text(
              "${select == true ? 'checkbox Selected' : 'Checkbox Unselected'}",
            )
          ],
        ),
      ),
    );
  }
}
