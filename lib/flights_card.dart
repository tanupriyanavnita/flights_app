import 'package:flights_app/flight_dummy.dart';
import 'package:flutter/material.dart';
import 'package:flights_app/flights_card.dart';
import 'package:flights_app/flight_model.dart';
import 'package:flights_app/flights_detail.dart';
class FlightCard extends StatelessWidget{
  final String fullName;
  final Flight flight;
  bool isClickable=true;


  FlightCard({this.flight, this.fullName, @required this.isClickable});
  _getItem(code,cityName,time){
    return Expanded(
      child: Column(
        children: <Widget>[
          Text(code,style:
            TextStyle(
              color: Colors.black,fontSize: 30.0,fontWeight: FontWeight.bold
            )),
          Text(cityName,style: TextStyle(fontSize: 18.0),),
          SizedBox(height: 10.0),
          Text(time, style: TextStyle(color: Colors.grey, fontSize: 14.0),)
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: (){
        isClickable?Navigator.of(context).push(MaterialPageRoute(
            builder: (context)=>FlightDetails(
              passengerName: fullName,
              flight: flight)))
            :null;
        },
      child: Card(
        elevation: 5.0,
        margin: EdgeInsets.all(0.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),),
        child: Container(
          padding: EdgeInsets.all(16.0),
          height: 120.0,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _getItem(flight.from,flight.fromCity,flight.departTime),
              Icon(Icons.airplanemode_active),
              _getItem(flight.to,flight.toCity,flight.arriveTime),
            ],
          ),
        ),
      ),
    );
  }

}