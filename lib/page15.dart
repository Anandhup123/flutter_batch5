import 'package:flutter/material.dart';

class Screen17 extends StatelessWidget {
  List<String> carNames = [
    'Tesla Model S',
    'Ford Mustang',
    'Chevrolet Camaro',
    'BMW 3 Series',
    'Audi A4',
    'Mercedes-Benz C-Class',
    'Honda Accord',
    'Toyota Camry',
    'Nissan Altima',
    'Volkswagen Golf',
    'Mazda CX-5',
    'Hyundai Sonata',
    'Subaru Outback',
    'Kia Sorento',
    'Jeep Grand Cherokee',
    'Porsche 911',
    'Lexus RX',
    'Jaguar XF',
    'Volvo XC90',
    'Land Rover Discovery'
  ];
  Screen17({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
      ),
      body: SafeArea(
        child: Center(
          child: ListView.builder(
            itemCount: carNames.length,
            itemBuilder: (context, index) => TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Screen18(
                      carName: carNames[index],
                    ),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.all(15),
                child: Text(carNames[index]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Screen18 extends StatelessWidget {
  String carName;
  Screen18({required this.carName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$carName",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
