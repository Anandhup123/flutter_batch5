import 'package:flutter/material.dart';
import 'package:flutter_batch5/SharedPreference.dart';
import 'package:flutter_batch5/page2.dart';
import 'package:flutter_batch5/page3.dart';

main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'screen4': (context) => Screen4(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // scaffoldBackgroundColor: Colors.blue[100],
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
      ),
      home: homepage(),
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
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 10,
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Screen2(),
                      ),
                    );
                  },
                  child: Text("Next Page"),
                ),
                Image(
                  width: 200,
                  height: 200,
                  image: AssetImage(
                    "Assets/earphone.webp",
                  ),
                ),
                const Image(
                  width: 200,
                  height: 200,
                  image: AssetImage(
                    "Assets/earphone.webp",
                  ),
                ),
                // Image(
                //   image: NetworkImage(
                //     "https://th.bing.com/th/id/OIP.J_dLXntpFPsLr5cTEhoqAwHaFj?w=198&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
