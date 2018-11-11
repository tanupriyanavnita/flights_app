import 'package:flutter/material.dart';
import 'package:flights_app/flights_card.dart';
import 'package:flights_app/home_screen.dart';
import 'package:flights_app/flight_model.dart';
import 'package:flights_app/flight_dummy.dart';
import 'package:flights_app/flights_detail.dart';
class FlightDetails extends StatelessWidget{
  final String passengerName;
  final Flight flight;

  FlightDetails({
    this.passengerName,
    this.flight
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    _getItem(code,cityName,time){
      return Column(
        children: <Widget>[
          Text(code),
          Text(cityName),
          SizedBox(height: 20.0),
        ],
      );
    }
    _getRichText(String text,String name,double size){
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RichText(
            text: TextSpan(
                style: TextStyle(fontSize: size,color: Colors.black),
                children: <TextSpan>[
                  TextSpan(text: text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: size)),
                  TextSpan(text: name)
                ]
            ),
          ),
        ],
      );
    }

    _flightDetailsCard(){
      return Card(
        elevation: 5.0,
        margin: EdgeInsets.all(0.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),),
        child: Container(
          padding: EdgeInsets.all(16.0),
          height: 120.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _getItem("NYC","New york City","5:30PM"),
              Icon(Icons.airplanemode_active),
              _getItem("SFO","San Fransisco","7:30PM"),
            ],
          ),
        ),
      );
    }
    _passengerDetailsCard(){
      return Card(
        elevation: 5.0,
        margin: EdgeInsets.all(0.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),),
        child: Container(
          padding:EdgeInsets.all(16.0),
          height: 180.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _getRichText("Passenger", passengerName,20.0),
              SizedBox(height: 10.0,),
              _getRichText("Date", "25/05/2020",20.0),
              SizedBox(height: 10.0,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:<Widget>[
              _getRichText("Flight ", "INDIGO042B",18.0),
              _getRichText("Class ", "Business",18.0),
                ],
              ),


              SizedBox(width: 10.0,),

              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                _getRichText("Seat ", "21B ",20.0),
                _getRichText(" Gate ", "17A",20.0)
                    ],
              ),


            ],
          ),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*.3,
                color: Colors.amber,
              ),
              Positioned(
                top: MediaQuery.of(context).size.width*0.3,
                child: Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  FlightCard(
                    flight: flight,
                   isClickable: false,

                  ),
                  SizedBox(height: 20.0,),
                  _passengerDetailsCard(),
                ],
              )
                )
              )
            ],
          ),
        ),
    );
  }

}