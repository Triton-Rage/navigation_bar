import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Bar with Gradient Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    PageOne(),
    PageTwo(),
    PageThree(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar with Gradient'),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.green], // Replace with your preferred colors
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Page One',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Page Two',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Page Three',
            ),
          ],
          backgroundColor: Colors.transparent, // Set background color to transparent
          selectedItemColor: Colors.white, // Change selected item color
          unselectedItemColor: Colors.white.withOpacity(0.6), // Change unselected item color
        ),
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Page One',
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Page Two',
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Page Three',
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}
