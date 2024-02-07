import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "This is a Booking Page. place your orders here",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}