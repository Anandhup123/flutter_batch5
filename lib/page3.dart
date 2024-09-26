import 'package:flutter/material.dart';
import 'package:flutter_batch5/page4.dart';

class Screen4 extends StatelessWidget {
  Screen4({super.key});
  List<String> _names = ["Akhil", "Aswin", "Jobin", "Suresh", "Venu"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Screen5(),
                ),
              );
            },
            icon: Icon(
              Icons.arrow_forward_rounded,
            ),
          )
        ],
        backgroundColor: Colors.purple,
      ),
      body: SafeArea(
        child: Container(
          child: ListView.separated(
            itemBuilder: (ctx, i) => BuilderElements(
              name: _names[i],
            ),
            separatorBuilder: (ctx, i) => Divider(
              color: Colors.black,
              thickness: 5,
            ),
            itemCount: _names.length,
          ),
        ),
      ),
    );
  }
}

class BuilderElements extends StatelessWidget {
  String name = "";
  BuilderElements({required this.name});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(name),
          subtitle: Text("Hi Iam here "),
          trailing: Text("7:50 pm"),
          leading: CircleAvatar(
            backgroundImage: AssetImage("Assets/tab.jpeg"),
          ),
        ),
      ],
    );
  }
}

class cardEleement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: const Card(
        shadowColor: Colors.greenAccent,
        elevation: 10,
        color: Colors.green,
        child: ListTile(
          title: Text("Athul Krishna"),
          subtitle: Text("Hello How are you.."),
          leading: CircleAvatar(
            radius: 40,
            backgroundColor: Colors.blue,
            child: Text("A"),
          ),
          trailing: Icon(
            Icons.notification_add_outlined,
          ),
        ),
      ),
    );
  }
}
