import 'package:flutter/material.dart';
import 'package:navigation/favorite.dart';
import 'package:navigation/home.dart';
import 'package:navigation/setting.dart';

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
        title: Text('I am a Surgeon',style: TextStyle(fontFamily: 'Salsa'),),
        backgroundColor: Colors.pink,
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: TextStyle(color: Colors.white),
        selectedLabelStyle: TextStyle(color: Colors.black),
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.pink,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });  
        },
        currentIndex: myIndex,
        items: [
        BottomNavigationBarItem(
        icon: Image.asset('lib/icons/home.png',height: 25, color: Colors.white,),
        activeIcon: Image.asset('lib/icons/home.png', height: 25,color: Colors.black,),
        label: 'Home',
        ),
        BottomNavigationBarItem(
        icon: Image.asset('lib/icons/booking.png', height: 25,color: Colors.white,),
        activeIcon: Image.asset('lib/icons/booking.png', height: 25,color: Colors.black,),
        label: 'Bookings',
        ),
        BottomNavigationBarItem(
        icon: Image.asset('lib/icons/user-profile.png', height: 26,color: Colors.white,),
        activeIcon: Image.asset('lib/icons/user-profile.png', height: 26,color: Colors.black,),
        label: 'Settings',
        ),
        ],
        ),
      );
    }
}