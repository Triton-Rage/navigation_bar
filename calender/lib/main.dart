import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';



void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key}) ;
  
  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
  DateTime today = DateTime.now();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('U succ Man')),
      body: content(),
    );
  }

  Widget content(){
    return Column(
      children: [
        Text("123"),
        Container(
          child: TableCalendar(
          rowHeight: 45,
          headerStyle: 
          HeaderStyle(formatButtonVisible: false, titleCentered: true),
          availableGestures: AvailableGestures.all,
          focusedDay: today, 
          firstDay: DateTime.utc(2010, 10, 16), 
          lastDay: DateTime.utc(2030, 10, 16),),
        ),      
      ],
    );
  }
}
