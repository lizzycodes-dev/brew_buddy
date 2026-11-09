import 'package:flutter/material.dart';

class DrinkScreen extends StatelessWidget {
  const DrinkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Drink Details')),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product illustration
            Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                color: const Color(0xFFE7D9C8),
                borderRadius: BorderRadius.circular(20),
              ),

              child: const Icon(
                Icons.coffee,
                size: 100,
                color: Color(0xFF6F4E37),
              ),
            ),

            const SizedBox(height: 24),

            const Text(
              'Iced Latte',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFF493323),
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'A smooth combination of espresso and cold milk, '
              'served over ice for a refreshing coffee experience.',
              style: TextStyle(fontSize: 15, color: Colors.brown, height: 1.5),
            ),

            const SizedBox(height: 20),

            const Text(
              '₱120.00',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF6F4E37),
              ),
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              height: 50,

              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Iced Latte selected!')),
                  );
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF6F4E37),
                  foregroundColor: Colors.white,
                ),

                child: const Text('Choose Drink'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
