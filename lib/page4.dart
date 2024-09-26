import 'package:flutter/material.dart';
import 'package:flutter_batch5/page5.dart';

class Screen5 extends StatelessWidget {
  Screen5({super.key});
  List<Color> status = [
    Colors.blue,
    Colors.indigo,
    Colors.green,
    Colors.red,
    Colors.orange,
    Colors.yellow,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Screen6(),
                ),
              );
            },
            icon: Icon(
              Icons.arrow_forward_rounded,
            ),
          )
        ],
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.blueAccent[100],
              width: double.infinity,
              height: 100,
              child: ListView.builder(
                itemCount: status.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.all(5),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: status[index],
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => Carditems(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Carditems extends StatelessWidget {
  const Carditems({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            child: ListTile(
              title: Text("__@insta_Name"),
              leading: CircleAvatar(
                backgroundColor: Colors.orange,
              ),
            ),
          ),
          Image(
            width: double.infinity,
            height: 350,
            fit: BoxFit.cover,
            image: AssetImage("Assets/watch.jpg"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                    ),
                  ),
                  Text("Like"),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.send,
                    ),
                  ),
                  Text("Share"),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.comment,
                    ),
                  ),
                  Text("Comment"),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
