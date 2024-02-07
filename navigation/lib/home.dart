import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "This is a Home Page, Welcome to my House",
          style: TextStyle(fontSize: 20, fontFamily: 'Salsa'),
        ),
      ),
    );
  }
}