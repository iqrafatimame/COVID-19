import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
class Pakistan extends StatefulWidget {
  @override
  _PakistanState createState() => _PakistanState();
}

class _PakistanState extends State<Pakistan> {
  List countryData;
   Future getData() async{ 
     http.Response response = await http.get("https://corona.lmao.ninja/v2/countries");
      setState((){
        countryData = json.decode(response.body);
        print(countryData);
    });
     debugPrint(response.body);
   }
   @override
  void initState() {
    super.initState();
    getData();
  }
    
  @override
  Widget build(BuildContext context) {
    int index = 148;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Container(
              height: 120.0,
              width: 120.0,
              child: Image.asset('images/flag.jpg'),
              ),
              SizedBox( 
                height: 5.0,
              ),
              Text('PAKISTAN',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.grey[700],
                letterSpacing: 3,
                fontWeight: FontWeight.bold,
               ),
              ),
              SizedBox( 
                height: 20.0,
              ),
              Card( 
                child: Container(
                  height: 80.0,
                  child: Center(
                    child: Row( 
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[ 
                          Text("Total Cases",
                          style: TextStyle( 
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color:Colors.black54,
                            ),
                          ),
                          Text('${countryData[index]["cases"]}',
                          style: TextStyle( 
                                color: Colors.purple,
                                fontSize: 35.0,
                                fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
              ),
               Card( 
                child: Container(
                  height: 80.0,
                  child: Center(
                    child: Row( 
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[ 
                          Text("Deaths",
                          style: TextStyle( 
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color:Colors.black54,
                            ),
                          ),
                          Text('${countryData[index]["deaths"]}',
                          style: TextStyle( 
                                color: Colors.red,
                                fontSize: 35.0,
                                fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
              ),
               Card( 
                child: Container(
                  height: 80.0,
                  child: Center(
                    child: Row( 
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[ 
                          Text("Recovered",
                          style: TextStyle( 
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color:Colors.black54,
                            ),
                          ),
                          Text('${countryData[index]["recovered"]}',
                          style: TextStyle( 
                                color: Colors.green,
                                fontSize: 35.0,
                                fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
              ),
               Card( 
                child: Container(
                  height: 80.0,
                  child: Center(
                    child: Row( 
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[ 
                          Text("Active Cases",
                          style: TextStyle( 
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color:Colors.black54,
                            ),
                          ),
                          Text('${countryData[index]["active"]}',
                          style: TextStyle( 
                                color: Colors.blue,
                                fontSize: 35.0,
                                fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text('Stay Home, Stay Safe! ',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 15.0,
                color: Colors.grey[600],
                fontWeight: FontWeight.bold,
               ),
              )
           ],
          ),
        ),
      ),
    );
  }
}