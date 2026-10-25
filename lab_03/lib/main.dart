import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bakery Shop',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 163, 146, 102),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'BAKERY SHOP'),
    );
  }
}

// Menu item model
class MenuItem {
  const MenuItem(this.name, this.desc, this.price, this.image);

  final String name;
  final String desc;
  final String price;
  final String image;
}

// Menu section model
class MenuSection {
  const MenuSection(this.title, this.note, this.items);

  final String title;
  final String note;
  final List<MenuItem> items;
}

// Bakery menu data
const menuSections = <MenuSection>[
  MenuSection('Pastries', 'Freshly baked', [
    MenuItem(
      'Croissant',
      'Buttery & flaky',
      'RM7',
      'assets/images/croissant.jpg',
    ),
    MenuItem(
      'Cinnamon Rolls',
      'fullfy swirled',
      'RM10',
      'assets/images/crolls.jpg',
    ),
    MenuItem(
      'Red Velvel Cupcake',
      'Soft & Moist',
      'RM4',
      'assets/images/cupcake.jpg',
    ),
    MenuItem('Egg Tart', 'Crispy Pastry', 'RM5', 'assets/images/tart.jpg'),
    MenuItem(
      'Macaron',
      'Crispy shell but chewy',
      'RM3',
      'assets/images/macaron.jpg',
    ),
  ]),
];

// Home page
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Combine items from all menu sections
  final List<MenuItem> items = menuSections
      .expand((section) => section.items)
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF7F0),

      // App bar
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: const Color.fromARGB(255, 163, 146, 102),
        foregroundColor: Colors.white,
        elevation: 0,
      ),

      // Bakery menu
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            clipBehavior: Clip.antiAlias,
            elevation: 2,
            color: const Color(0xFFF7F1E5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image on the left
                SizedBox(
                  width: 140,
                  height: 140,
                  child: Image.asset(
                    item.image,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.brown.shade100,
                        child: const Icon(
                          Icons.bakery_dining,
                          size: 60,
                          color: Colors.brown,
                        ),
                      );
                    },
                  ),
                ),

                // Product details on the right
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name,
                          style: Theme.of(context).textTheme.titleLarge
                              ?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF332820),
                              ),
                        ),

                        const SizedBox(height: 8),

                        Text(
                          item.desc,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color(0xFF66574C),
                          ),
                        ),

                        const SizedBox(height: 16),

                        Text(
                          item.price,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF795C4A),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
