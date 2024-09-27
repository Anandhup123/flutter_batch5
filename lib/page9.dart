import 'package:flutter/material.dart';
import 'package:flutter_batch5/page10.dart';

class Screen10 extends StatefulWidget {
  const Screen10({super.key});

  @override
  State<Screen10> createState() => _Screen10State();
}

class _Screen10State extends State<Screen10> {
  final _num1 = TextEditingController();
  final _num2 = TextEditingController();
  final _sum = TextEditingController();
  final _sub = TextEditingController();
  final _multi = TextEditingController();
  final _div = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Screen11(),
                ),
              );
            },
            icon: Icon(Icons.arrow_forward),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 255, 119, 0),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "\t\t\t\t\t\t\t Let's Do \nSome Calculations",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.deepOrange),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 200,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: _num1,
                    decoration: InputDecoration(
                      labelText: "Number 1",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  child: TextField(
                    controller: _num2,
                    decoration: InputDecoration(
                      labelText: "Number 2",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              "---Calculations---",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.deepOrange),
            ),
            Container(
              width: 400,
              child: Divider(
                color: Colors.deepOrangeAccent,
                thickness: 5,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 200,
                  height: 60,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          _sum.text =
                              (int.parse(_num1.text) + int.parse(_num2.text))
                                  .toString();
                        });
                      },
                      child: Text("Addition")),
                ),
                Container(
                  width: 200,
                  child: TextField(
                    readOnly: true,
                    controller: _sum,
                    decoration: InputDecoration(
                      labelText: "Sum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 200,
                  height: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        _sub.text =
                            (int.parse(_num1.text) - int.parse(_num2.text))
                                .toString();
                      });
                    },
                    child: Text("Substraction"),
                  ),
                ),
                Container(
                  width: 200,
                  child: TextField(
                    readOnly: true,
                    controller: _sub,
                    decoration: InputDecoration(
                      labelText: "Sub",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 200,
                  height: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        _multi.text =
                            (int.parse(_num1.text) * int.parse(_num2.text))
                                .toString();
                      });
                    },
                    child: Text("Multiplication"),
                  ),
                ),
                Container(
                  width: 200,
                  child: TextField(
                    readOnly: true,
                    controller: _multi,
                    decoration: InputDecoration(
                      labelText: "Mul",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 200,
                  height: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        _div.text = (double.parse(_num1.text) /
                                double.parse(_num2.text))
                            .toStringAsFixed(3);
                      });
                    },
                    child: Text("Division"),
                  ),
                ),
                Container(
                  width: 200,
                  child: TextField(
                    readOnly: true,
                    controller: _div,
                    decoration: InputDecoration(
                      labelText: "Div",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 120,
              height: 50,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    _num1.text = "";
                    _num2.text = "";
                    _sum.text = "";
                    _sub.text = "";
                    _multi.text = "";
                    _div.text = "";
                  });
                },
                child: Text("Clear"),
              ),
            )
          ],
        ),
      )),
    );
  }
}
