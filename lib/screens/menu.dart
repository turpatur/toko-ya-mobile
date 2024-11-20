import 'package:flutter/material.dart';
import 'package:toko_ya/widgets/left_drawer.dart';
import 'package:toko_ya/widgets/item_card.dart';

class MyHomePage extends StatelessWidget {
  final String npm = '2306206282'; // NPM
  final String name = 'Fathurrahman Kesuma Ridwan'; // Nama
  final String className = 'PBP E'; // Kelas

  final List<ItemHomepage> items = [
    ItemHomepage("Lihat Item", Icons.inventory),
    ItemHomepage("Tambah Item", Icons.add),
    ItemHomepage("Logout", Icons.logout),
  ];

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold provides the basic structure of the page with AppBar and body.
    return Scaffold(
      // AppBar with the title
      appBar: AppBar(
        title: const Text(
          'Toko-ya!',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: const LeftDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Row for InfoCard displaying 3 info items horizontally
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: name),
                InfoCard(title: 'Class', content: className),
              ],
            ),
            const SizedBox(height: 16.0),
            Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Welcome to Toko-ya!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  // Grid to display ItemCards in a 3-column layout
                  GridView.count(
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    children: items.asMap().entries.map((entry) {
                      int index = entry.key; // Get the index of the item
                      ItemHomepage item = entry.value;
                      // Apply a unique color to each button based on the index
                      return ItemCard(item, cardColor: _getButtonColor(index));
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Function to get a different shade of green based on index
  Color _getButtonColor(int index) {
    switch (index) {
      case 0:
        return Colors.green[700]!;
      case 1:
        return Colors.green[500]!;
      case 2:
        return Colors.green[300]!;
      default:
        return Colors.green;
    }
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String content;

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Container(
        width: MediaQuery.of(context).size.width / 3.5,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(content),
          ],
        ),
      ),
    );
  }
}
