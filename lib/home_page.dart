import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class First extends StatefulWidget{ 
   @override 
   FirstState createState() => FirstState();
 }

 class FirstState extends State<First>  {
   List countryData;
   // to get data
  Future getData () async{ 
    http.Response response = await http.get("https://corona.lmao.ninja/countries?sort=country");

    setState((){
        countryData = json.decode(response.body);
        print(countryData);
    });
  }

  @override
  void initState(){
    super.initState();
    getData();   // getting data from corona API
  }

   @override 
   Widget build(BuildContext context){
     return Scaffold( 
        body: ListView.builder(
          itemCount: countryData == null ? 0 : countryData.length,
          itemBuilder: (BuildContext context, int index){
            return  Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
              ),
              child: ListTile(
                title: Text("${countryData[index]["country"]}",
                style: TextStyle( 
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  ),
                ),
                leading: Icon(Icons.flag,
                color: Colors.blue),
                subtitle: Text("Total Cases: ${countryData[index]["cases"]}\n Deaths: ${countryData[index]["deaths"]} \n Recovered: ${countryData[index]["recovered"]}", 
                style: TextStyle( 
                  fontSize: 12
                )),
                isThreeLine: true,
              ),
              shadowColor: Colors.grey,
            );
          },
        ),
     );
   }
 }