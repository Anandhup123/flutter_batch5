import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final formkey = GlobalKey<FormState>();
  final mobile = TextEditingController();
  final name = TextEditingController();

  Future<void> saveData() async {
    final sp = await SharedPreferences.getInstance();
    await sp.setString("nameSaved", name.text);
    await sp.setString("phoneSaved", mobile.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: const Text(
          "Login Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Here to Get",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                  const Text(
                    "Welcomed..!",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.purple,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    controller: name,
                    maxLength: 25,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Enter your name"),
                    validator: (value) {
                      return (value!.isEmpty) ? "Name is Required" : null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: mobile,
                    maxLength: 10,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter your Phone No.",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Invalid Phone Number ';
                      } else if (mobile.text.length != 10) {
                        return "Phone Number Should be 10 digits";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          saveData();
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              behavior: SnackBarBehavior.floating,
                              backgroundColor: Colors.green,
                              content: Text("Data Saved Successfully"),
                            ),
                          );
                        }
                      },
                      child: const Text("Login"),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ShowSavedData(),
                          ),
                        );
                      },
                      child: Text("Go to see your Saved data"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ShowSavedData extends StatefulWidget {
  const ShowSavedData({super.key});

  @override
  State<ShowSavedData> createState() => _ShowSavedDataState();
}

class _ShowSavedDataState extends State<ShowSavedData> {
  String nameCopy = "";
  String phoneCopy = "";

  Future<void> getSavedData() async {
    final sp = await SharedPreferences.getInstance();
    setState(() {
      nameCopy = sp.getString("nameSaved")!;
      phoneCopy = sp.getString("phoneSaved")!;
    });
  }

  Future<void> clearData() async {
    final sp = await SharedPreferences.getInstance();
    await sp.setString("nameSaved", "");
    await sp.setString("phoneSaved", "");
    setState(() {
      nameCopy = "";
      phoneCopy = "";
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.red,
        content: Text("Your Saved data is cleared"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Saved Data"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white),
                    onPressed: () {
                      getSavedData();
                    },
                    child: Text("Show Saved data"),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white),
                    onPressed: () {
                      clearData();
                    },
                    child: Text("Clear Data"),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Null-safe display of saved data
              Text(nameCopy),
              const SizedBox(height: 10),
              Text(phoneCopy),
            ],
          ),
        ),
      ),
    );
  }
}
