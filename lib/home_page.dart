import 'dart:async';
 import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class First extends StatefulWidget{ 
   @override 
   FirstState createState() => FirstState();
 }

 class FirstState extends State<First>  {
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
   Widget build(BuildContext context){
     return Scaffold( 
        body: 
            ListView.builder(
              itemCount: countryData == null ? 0 : countryData.length,
              itemBuilder: (BuildContext context, int index){
                return  Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                   ),
                  ),
                  child: Container( 
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          height: 60.0,
                          child: Padding(
                            padding: const EdgeInsets.only( 
                              top: 20.0,
                              left: 20.0,
                            ),
                            child: Text('${countryData[index]["country"]}',
                            style: TextStyle( 
                                color: Colors.grey[700],
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                               ),
                             ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only( 
                            bottom: 20.0,
                            top: 20.0,
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                              Column(
                                children: <Widget>[ 
                                      Text('Total Cases',
                                      style: TextStyle( 
                                        color:Colors.black54,
                                       ),
                                      ),
                                      SizedBox(height: 15.0),
                                      Text('${countryData[index]["cases"]}',
                                      style: TextStyle( 
                                        color: Colors.blue,
                                        fontSize: 35.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                     ),
                                ],
                              ),
                               Column(
                                children: <Widget>[ 
                                      Text('Deaths',
                                      style: TextStyle( 
                                        color:Colors.black54,
                                        ),
                                       ),
                                      SizedBox(height: 15.0),
                                      Text('${countryData[index]["deaths"]} ',
                                      style: TextStyle( 
                                        color: Colors.red,
                                        fontSize: 35.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                ],
                              ),
                               Column(
                                children: <Widget>[ 
                                      Text('Recovered',
                                      style: TextStyle( 
                                        color:Colors.black54,
                                       ),
                                      ),
                                      SizedBox(height: 15.0),
                                      Text('${countryData[index]["recovered"]}',
                                      style: TextStyle( 
                                        color: Colors.green,
                                        fontSize: 35.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                ],
                                ),
                             ],
                            ),
                          ),
                        ),
                        Container( 
                          height: 15.0,
                        ),
                      ],
                    ),
                    
                  ),
                  shadowColor: Colors.grey,
                );
              },
            ),
         );
       }
    }
