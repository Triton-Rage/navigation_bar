import 'package:flutter/material.dart';
import 'package:clean/favorite.dart';
import 'package:clean/home.dart';
import 'package:clean/setting.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Bar Example',
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
  int myIndex = 0;
  
  
 List<Widget> widgetlist = [
    HomePage(),
    FavoritePage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetlist[myIndex],
      ),
      appBar: AppBar(
        title: Text('I am a Surgeon',style: TextStyle(fontFamily: 'LongCang'),),
        backgroundColor: Colors.pink,
      ),
      bottomNavigationBar: Container(
                decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.pink.shade300, Colors.pink.shade600], 
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
      
      child:
      BottomNavigationBar(
      unselectedLabelStyle: const TextStyle(color: Colors.white, fontSize: 14),
      fixedColor: Colors.white,
        backgroundColor: Colors.transparent, 
        onTap: (index) {
          setState(() {
            myIndex = index;
          });  
        },
        currentIndex: myIndex,
        items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              activeIcon: Icon(Icons.home, color: Colors.white,),
              label: 'Page One',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              activeIcon: Icon(Icons.person, color: Colors.white,),
              label: 'Page Two' ,backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              activeIcon: Icon(Icons.settings, color: Colors.white,),
              label: 'Page Three',
            ),
          ],

        ),
        
        ),
      );
    }
}