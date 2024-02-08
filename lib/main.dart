import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:table_calendar/table_calendar.dart';  

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Suguna Demo Flutter App',
      home: HomeCalendarPage(),
    );
  }

}

class HomeCalendarPage extends StatefulWidget {  
  @override  
  _HomeCalendarPageState createState() => _HomeCalendarPageState();  
}  


class _HomeCalendarPageState extends State<HomeCalendarPage>{

  late CalendarController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(  
        title: Text('Flutter Calendar Example'),  
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TableCalendar(focusedDay: DateTime.utc(2010, 10, 16), firstDay: DateTime.utc(2030, 3, 14), lastDay: DateTime.now())
          ]),
      ),  
    );
  }

}






