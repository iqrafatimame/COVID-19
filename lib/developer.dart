import 'package:flutter/material.dart';
import 'presentation/my_flutter_app_icons.dart';
class Developer extends StatefulWidget {
  @override
  _DeveloperState createState() => _DeveloperState();
}

class _DeveloperState extends State<Developer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('DEVELOPER',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.black,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
               ),
              ),
              SizedBox(
                height: 15.0,
              ),
              CircleAvatar(
                radius:80.0,
                backgroundColor: Colors.blueGrey,
               backgroundImage: AssetImage('images/iqra.jpg'),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text('Iqra Fatima',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 30.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
               ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider( 
                    color: Colors.white,
                ),
                ),
              Card( 
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: const EdgeInsets.only( 
                    left: 15.0,
                  ),
                  child: ListTile(
                    leading:Icon(MyFlutterApp.github,
                            size: 30.0,
                            color: Colors.black,
                     ),
                     title: Text('iqrafatimame',
                            style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,),
                     ),
                  )
                ),
              ),
              Card( 
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: const EdgeInsets.only( 
                    left: 15.0,
                  ),
                  child: ListTile(
                    leading:Icon(Icons.email,
                            size: 30.0,
                            color: Colors.black,
                     ),
                     title: Text('iqrafatimame@gmail.com',
                            style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,),
                     ),
                  )
                ),
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}