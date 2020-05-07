import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import './MyTabs.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen( 
      seconds : 10,
       image: new Image.asset('images/playstore.png'
     
     ),
     loadingText: Text('Stay Home, Stay Save!',
     style:TextStyle(
       color: Colors.grey[600],
       fontFamily: 'Lato',
       fontSize: 20.0,
       fontWeight: FontWeight.bold,
        ),
       ),
       navigateAfterSeconds: MyTabs(),
     ),
    );
  }
}
