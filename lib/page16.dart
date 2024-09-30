import 'package:flutter/material.dart';

class Screen19 extends StatelessWidget {
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
    {
      'title': 'Laptop 6',
      'subtitle': 'Brand F, 16GB RAM, 1TB HDD',
      'trailing': '\$1500',
      'leading':
          'https://images.gizbot.com/600x400/ph-big/2024/02/tecno-megabook-t16-pro-2024-ultra-laptop-with-intel-core-ultra-7-launched-mwc-2024_170913748820.jpg',
    },
    {
      'title': 'Laptop 7',
      'subtitle': 'Brand G, 12GB RAM, 512GB SSD',
      'trailing': '\$1100',
      'leading':
          'https://cdn.vox-cdn.com/thumbor/ByNALa-QJ5kMX38tGQNt7o13S00=/0x0:2040x1360/768x512/filters:focal(1020x680:1021x681)/cdn.vox-cdn.com/uploads/chorus_asset/file/24677165/236652_HP_Spectre_x360_14_AKrales_0138.jpg',
    },
    {
      'title': 'Laptop 8',
      'subtitle': 'Brand H, 8GB RAM, 512GB SSD',
      'trailing': '\$950',
      'leading':
          'https://www.livemint.com/lm-img/img/2024/03/28/1600x900/B0C3D8BZVQ_991468120202959807_1711600561125.jpg',
    },
    {
      'title': 'Laptop 9',
      'subtitle': 'Brand I, 16GB RAM, 256GB SSD',
      'trailing': '\$1000',
      'leading':
          'https://thumbs.dreamstime.com/b/laptop-computer-travel-37983668.jpg',
    },
    {
      'title': 'Laptop 10',
      'subtitle': 'Brand J, 12GB RAM, 1TB HDD',
      'trailing': '\$1200',
      'leading':
          'https://www.saudewala.in/cdn/shop/collections/Laptop.jpg?v=1682921339&width=1296',
    },
    {
      'title': 'Laptop 11',
      'subtitle': 'Brand A, 8GB RAM, 256GB SSD',
      'trailing': '\$800',
      'leading':
          "https://i.pcmag.com/imagery/roundups/0067KVthfOytnra14VzQ5PK-41..v1700163487.jpg",
    },
    {
      'title': 'Laptop 12',
      'subtitle': 'Brand B, 16GB RAM, 512GB SSD',
      'trailing': '\$1200',
      'leading':
          'https://images.herzindagi.info/image/2024/Jan/Best-Laptops-Under-50000-2.jpg',
    },
    {
      'title': 'Laptop 13',
      'subtitle': 'Brand C, 12GB RAM, 1TB HDD',
      'trailing': '\$1000',
      'leading':
          'https://www.saudewala.in/cdn/shop/collections/Laptop.jpg?v=1682921339&width=1296',
    },
    {
      'title': 'Laptop 14',
      'subtitle': 'Brand D, 16GB RAM, 512GB SSD',
      'trailing': '\$1300',
      'leading':
          'https://www.pcworld.com/wp-content/uploads/2023/08/dscf0453_final-100797561-orig-100915025-orig.jpg?quality=50&strip=all',
    },
  ];
  Screen19({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(laptopData[index]['title']),
                  subtitle: Text(laptopData[index]['subtitle']),
                  trailing: Text(laptopData[index]['trailing']),
                  leading: CircleAvatar(
                      radius: 40,
                      backgroundImage:
                          NetworkImage(laptopData[index]['leading'])),
                ),
            separatorBuilder: (context, index) => Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
            itemCount: laptopData.length),
      ),
    );
  }
}
