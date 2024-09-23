import 'package:flutter/material.dart';

main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "My Application",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          color: Colors.white,
          onPressed: () {},
          icon: Icon(
            Icons.account_box_outlined,
          ),
        ),
        actions: [
          IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: Icon(
              Icons.camera,
            ),
          ),
          IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
            ),
          ),
        ],
      ),
      body: const SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Hello World.."),
            Text("Hello World.."),
            Text("Hello World.."),
            Text("Hello World.."),
            Text("Hello World.."),
            Text("Hello World.."),
          ],
        ),
      )),
    );
  }
}
