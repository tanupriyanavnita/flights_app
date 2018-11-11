import 'package:flutter/material.dart';
import 'package:flights_app/flights_list.dart';
import 'package:flights_app/flights_detail.dart';
class HomeBody extends StatefulWidget{
  @override
  HomeBodyState createState() {
    return new HomeBodyState();
  }
}

class HomeBodyState extends State<HomeBody> {

  final textController=TextEditingController();

  @override
  void dispose(){
    textController.dispose();
    super.dispose();
  }

  @override
  void initState(){
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: ListView(
          children:<Widget>[
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage('assets/logo.png'),
                height: 150.0,
              ),
              SizedBox(height:40.0),
              Text("Make My Flights",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(height: 20.0),
              TextField(
                controller: textController,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                    hintText: "Full Name",
                    filled: true,
                  fillColor: Colors.grey[200],
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 30.0,
                    vertical: 10.0
                  )
                ),
                /*onChanged: (text){
                  print(text);
                },*/
              ),
              SizedBox(height: 10.0),
              RaisedButton(
                padding: EdgeInsets.symmetric(horizontal: 100.0),
                color: Colors.amber,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Text("Proceed"),
                onPressed: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => FlightList(
                          fullName : textController.text)));
                  print(textController.text);
                },
              ),
            ],
          ),
        ],
        ),
      ),
    );
  }
}









/*class HomeBody extends StatefulWidget {
  @override
  HomeBodyState createState() {
    return new HomeBodyState();
  }
}

class HomeBodyState extends State<HomeBody> {
  bool isRed=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child:RaisedButton(
          color: isRed?Colors.blue:Colors.red,
           onPressed: (){
            setState(() {
              isRed=!isRed;
            });
            print(isRed);
          }
      ),
      )
    );
  }
}
*/