import 'package:flutter/material.dart';
import 'package:flights_app/flights_card.dart';
import 'package:flights_app/home_screen.dart';
import 'package:flights_app/flight_model.dart';
import 'package:flights_app/flight_dummy.dart';
class FlightList extends StatelessWidget{
  final String fullName;
  FlightList({
    this.fullName
  });
  @override
  Widget build(BuildContext context) {

    Flight flight;
    return Scaffold(

      appBar: AppBar(
        title:Text(fullName),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),

      body:Padding(
        padding: const EdgeInsets.all(8.0),
      child:ListView.builder(
        itemCount: FlightsMockData.count,
          itemBuilder: (context,index){
          flight=FlightsMockData.getFlights(index);
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlightCard(
              fullName:fullName,
              flight:flight,
              isClickable: true,
            ),
          );
        }
          ),
    )
    );
    }

/*
 Center(
        child: RaisedButton(onPressed: (){
          Navigator.of(context).pushNamed('details');
        }),
      ),
      */}