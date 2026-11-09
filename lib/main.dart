import 'package:flutter/material.dart';

import 'menuscreen.dart';

void main() {
  runApp(const BrewBuddyApp());
}

class BrewBuddyApp extends StatelessWidget {
  const BrewBuddyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BrewBuddy',

      theme: ThemeData(
        useMaterial3: true,

        scaffoldBackgroundColor: const Color(0xFFF5F0E8),

        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF6F4E37)),

        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFF5F0E8),
          foregroundColor: Color(0xFF493323),
          elevation: 0,
        ),
      ),

      home: const MenuScreen(),
    );
  }
}
