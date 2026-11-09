import 'package:flutter/material.dart';

import 'drinkscreen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BrewBuddy',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Good morning!',
              style: TextStyle(fontSize: 16, color: Colors.brown),
            ),

            const SizedBox(height: 8),

            const Text(
              'What would you like to drink?',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 24),

            // Featured drink
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF6F4E37),
                borderRadius: BorderRadius.circular(16),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "TODAY'S FAVORITE",
                    style: TextStyle(color: Colors.white70),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    'Iced Latte',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  const Text(
                    'Smooth, creamy, and refreshing.',
                    style: TextStyle(color: Colors.white),
                  ),

                  const SizedBox(height: 15),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DrinkScreen(),
                        ),
                      );
                    },
                    child: const Text('View Drink'),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 28),

            const Text(
              'Popular Drinks',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 12),

            Row(
              children: [
                Expanded(child: drinkCard('Caramel Latte', '₱130.00')),

                const SizedBox(width: 12),

                Expanded(child: drinkCard('Iced Mocha', '₱140.00')),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget drinkCard(String name, String price) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFE7D9C8),
        borderRadius: BorderRadius.circular(12),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.coffee, size: 40, color: Color(0xFF6F4E37)),

          const SizedBox(height: 10),

          Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),

          const SizedBox(height: 5),

          Text(price),
        ],
      ),
    );
  }
}
