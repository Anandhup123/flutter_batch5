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

class page9 extends StatefulWidget {
  page9({super.key});

  @override
  State<page9> createState() => _page9State();
}

class _page9State extends State<page9> {
  String selectedItem = 'Item 1';
  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed("page10");
            },
            icon: Icon(Icons.arrow_forward),
          )
        ],
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Text("DropDown"),
              Container(
                child: Center(
                  child: DropdownButtonFormField(
                    value: selectedItem,
                    items: items.map((item) {
                      return DropdownMenuItem(
                        child: Text(item),
                        value: item,
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedItem = newValue!;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
