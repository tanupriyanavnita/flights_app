import 'package:flutter/material.dart';
import 'package:flights_app/home_screen.dart';
import 'package:flights_app/flights_list.dart';
import 'package:flights_app/flights_detail.dart';
void main() => runApp(new FlightsApp());

class FlightsApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flights App',
      home: HomeBody(),
      routes: <String,WidgetBuilder>{
        'list':(context)=>FlightList(),
        'details':(context)=>FlightDetails(),
      },
    );
  }
}


