import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              iconSize: 30,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Screen3(),
                  ),
                );
              },
              icon: Icon(
                Icons.arrow_forward_outlined,
              ),
            )
          ],
        ),
      )),
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed("screen4");
            },
            icon: Icon(
              Icons.arrow_forward,
            ),
          )
        ],
        backgroundColor: Colors.orange,
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Beauty Of Nature",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.purple,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image(
                          width: 150,
                          height: 150,
                          image: AssetImage("Assets/earphone.webp"),
                        ),
                      ),
                      Text("Image 1")
                    ],
                  ),
                  Column(
                    children: [
                      Image(
                        width: 150,
                        height: 150,
                        image: AssetImage("Assets/pendrive.jpeg"),
                      ),
                      Text("Image 1")
                    ],
                  ),
                  Column(
                    children: [
                      Image(
                        fit: BoxFit.fill,
                        width: 150,
                        height: 150,
                        image: AssetImage("Assets/tab.jpeg"),
                      ),
                      Text("Image 1")
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image(
                        width: 150,
                        height: 150,
                        image: AssetImage("Assets/earphone.webp"),
                      ),
                      Text("Image 1")
                    ],
                  ),
                  Column(
                    children: [
                      Image(
                        width: 150,
                        height: 150,
                        image: AssetImage("Assets/pendrive.jpeg"),
                      ),
                      Text("Image 1")
                    ],
                  ),
                  Column(
                    children: [
                      Image(
                        fit: BoxFit.fill,
                        width: 150,
                        height: 150,
                        image: AssetImage("Assets/tab.jpeg"),
                      ),
                      Text("Image 1")
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image(
                        width: 150,
                        height: 150,
                        image: AssetImage("Assets/earphone.webp"),
                      ),
                      Text("Image 1")
                    ],
                  ),
                  Column(
                    children: [
                      Image(
                        width: 150,
                        height: 150,
                        image: AssetImage("Assets/pendrive.jpeg"),
                      ),
                      Text("Image 1")
                    ],
                  ),
                  Column(
                    children: [
                      Image(
                        fit: BoxFit.fill,
                        width: 150,
                        height: 150,
                        image: AssetImage("Assets/tab.jpeg"),
                      ),
                      Text("Image 1")
                    ],
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
