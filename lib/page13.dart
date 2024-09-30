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
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DropDown(),
                ),
              );
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

class DropDown extends StatefulWidget {
  DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  List<Map<String, dynamic>> laptopData = [
    {
      'title': 'Laptop 1',
      'subtitle': 'Brand A, 8GB RAM, 256GB SSD',
      'trailing': '\$800',
      'leading':
          "https://i.pcmag.com/imagery/roundups/0067KVthfOytnra14VzQ5PK-41..v1700163487.jpg",
    },
    {
      'title': 'Laptop 2',
      'subtitle': 'Brand B, 16GB RAM, 512GB SSD',
      'trailing': '\$1200',
      'leading':
          'https://images.herzindagi.info/image/2024/Jan/Best-Laptops-Under-50000-2.jpg',
    },
    {
      'title': 'Laptop 3',
      'subtitle': 'Brand C, 12GB RAM, 1TB HDD',
      'trailing': '\$1000',
      'leading':
          'https://www.saudewala.in/cdn/shop/collections/Laptop.jpg?v=1682921339&width=1296',
    },
    {
      'title': 'Laptop 4',
      'subtitle': 'Brand D, 16GB RAM, 512GB SSD',
      'trailing': '\$1300',
      'leading':
          'https://www.pcworld.com/wp-content/uploads/2023/08/dscf0453_final-100797561-orig-100915025-orig.jpg?quality=50&strip=all',
    },
    {
      'title': 'Laptop 5',
      'subtitle': 'Brand E, 8GB RAM, 256GB SSD',
      'trailing': '\$900',
      'leading':
          'https://cdn-dynmedia-1.microsoft.com/is/image/microsoftcorp/MSFT-Surfcae-laptops-models-hero-poster?scl=1',
    },
  ];
  String selectedItem = "Laptop 1";
  List<String> items = [
    'Laptop 1',
    'Laptop 2',
    'Laptop 3',
    'Laptop 4',
    'Laptop 5'
  ];
  void SearchandPass(String selectedItem) {
    int data = 0;
    for (int i = 0; i < laptopData.length; i++) {
      if (laptopData[i]['title'] == selectedItem) {
        data = i;
      }
    }
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ItemShow(
            title: laptopData[data]['title'],
            subtitle: laptopData[data]['subtitle'],
            leading: laptopData[data]['leading'],
            trailing: laptopData[data]['trailing']),
      ),
    );
  }

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
            Container(
              width: 300,
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
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                SearchandPass(selectedItem);
              },
              child: Text("Submit"),
            ),
            TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Icon(
                            size: 50,
                            color: Colors.red,
                            Icons.warning,
                          ),
                          content:
                              Text("Error Generated , Do you want to continue"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("Cancel"),
                            )
                          ],
                        ));
              },
              child: Text("Show Alert"),
            )
          ],
        ),
      )),
    );
  }
}

class ItemShow extends StatelessWidget {
  String title, subtitle, leading, trailing;
  ItemShow(
      {required this.title,
      required this.subtitle,
      required this.leading,
      required this.trailing});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Image(
              width: 300,
              height: 300,
              image: NetworkImage(leading),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              trailing,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            )
          ],
        ),
      )),
    );
  }
}
