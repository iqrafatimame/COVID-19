
import 'package:flutter/material.dart';
import 'package:corona_virus/customWidgets.dart/HomeCard.dart';
import 'package:corona_virus/Model/pakistanDataModel.dart';
import 'package:corona_virus/Api/covidAPi.dart';
class Pakistan extends StatefulWidget {
  @override
  _PakistanState createState() => _PakistanState();
}

class _PakistanState extends State<Pakistan> with TickerProviderStateMixin{
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container( 
        color: Colors.white,
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
              Container(
              height: 100.0,
              width: 100.0,
              child: Image.asset('images/flag.jpg'),
              ),
              Text('PAKISTAN',
              style: TextStyle( 
                  fontSize: 25.0,
                  fontFamily: 'Montserrat' ,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3.0,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 10.0),
              FutureBuilder<HomeState>( 
                future: CovidAPI().getHomeCase(),
                builder: (context, snapshot){
                  if(snapshot.connectionState == ConnectionState.waiting){
                    return Container( 
                        // virus loader
                    );
                  }
                  else{ 
                    return Column( 
                      children: [
                        Home(
                        count: snapshot.data.cases,
                        heading: 'Total Cases',
                        color: Colors.purple,
                        ),
                        Home(
                        count: snapshot.data.deaths,
                       heading: 'Deaths',
                        color: Colors.red,
                        ),
                        Home(
                        count: snapshot.data.recovered,
                        heading: 'Recovered',
                        color: Colors.green,
                        ),
                        Home(
                        count: snapshot.data.tested,
                        heading: 'Tested',
                        color: Colors.blue,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text('Stay Home, Stay Save!',
                          style: TextStyle( 
                            fontSize: 15.0,
                            color: Colors.grey[600],
                           ),
                          ),
                        )
                      ],
                    );
                  }
                },
              ),
            ],
          ),
        ),
      );
  }
}