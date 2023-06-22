import 'dart:math';

import 'package:flutter/material.dart';
import 'package:inspiring_quotes/quote_list.dart';

class QuotePage extends StatefulWidget {
  const QuotePage({super.key});

  @override
  State<QuotePage> createState() => _QuotePageState();
}

class _QuotePageState extends State<QuotePage> {
  int currentIndex = 0;

  void randomImage() {
    final random = Random();
    final index = random.nextInt(imagesPaths.length);
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade50,
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Image.asset(imagesPaths[currentIndex], fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: Colors.green,
              ),
              onPressed: randomImage,
              child: const Text(
                'Next Quote',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 32),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
