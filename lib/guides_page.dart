
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class Guides extends StatefulWidget { 
  @override 
  GuidesState createState() => GuidesState();
}

class GuidesState extends State<Guides> { 
  
  @override 
  Widget build(BuildContext context){ 
    return Scaffold(
      body: Container(
          child: ListView(
            children: [
              // first card 
              Container(
                height: 150.0,
                child: Card( 
                  shape: RoundedRectangleBorder( 
                      borderRadius: BorderRadius.circular(20),
                    ),
                  child: Padding(
                    padding: const EdgeInsets.only( 
                      top: 30.0,
                    ),
                    child: ListTile( 
                      leading: Icon(Icons.star,
                      color: Colors.yellow,
                      size: 35.0,
                      ),
                      title: Text('Wash Your Hands',
                      style: TextStyle( 
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle:Text('Washing your hands is the best way to \n help you stay healthy.',
                      style: TextStyle(
                            fontSize: 15.0,
                       ),
                      ),
                    ),
                  ),
                ),
            ),
            
            // second Card
            Container(
                height: 150.0,
                child: Card( 
                  shape: RoundedRectangleBorder( 
                      borderRadius: BorderRadius.circular(20),
                    ),
                  child: Padding(
                    padding: const EdgeInsets.only( 
                      top: 30.0,
                    ),
                    child: ListTile( 
                      leading: Icon(Icons.grid_on,
                      color: Colors.green,
                      size: 35.0,
                      ),
                      title: Text('Social Distance',
                      style: TextStyle( 
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                       ),
                      ),
                      subtitle:Text('The main way COVID-19 speads is between people. Social distancing helps to stop the spread. ',
                      style: TextStyle(
                            fontSize: 15.0,
                       ),
                      ),
                    ),
                  ),
                ),
            ),
           
            // third Card

           Container(
                height: 150.0,
                child: Card( 
                  shape: RoundedRectangleBorder( 
                      borderRadius: BorderRadius.circular(20),
                    ),
                  child: Padding(
                    padding: const EdgeInsets.only( 
                      top: 30.0,
                    ),
                    child: ListTile( 
                      leading: Icon(Icons.person,
                      color: Colors.red,
                      size: 35.0,
                      ),
                      title: Text('Isolate Yourself From Others',
                      style: TextStyle( 
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                       ),
                      ),
                      subtitle:Text('if you have confiremed or possible COVID-19 or have symptoms, isolate yourself in your home to protect others.',
                      style: TextStyle(
                            fontSize: 15.0,
                       ),
                      ),
                    ),
                  ),
                ),
            ),
            
            // fourth card
           Container(
                height: 150.0,
                child: Card( 
                  shape: RoundedRectangleBorder( 
                      borderRadius: BorderRadius.circular(20),
                    ),
                  child: Padding(
                    padding: const EdgeInsets.only( 
                      top: 30.0,
                    ),
                    child: ListTile( 
                      leading: Icon(Icons.done_all,
                      color: Colors.blue,
                      size: 35.0,
                      ),
                      title: Text('Symptoms Monitoring',
                      style: TextStyle( 
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                       ),
                      ),
                      subtitle:Text('Observe your COVID-19 symptoms for 14 days if you suspect you have the disease, have been around someone who has tested positive or you have been diagosed.',
                      style: TextStyle(
                            fontSize: 15.0,
                       ),
                      ),
                    ),
                  ),
                ),
            ),
            
            // fifth Card
             Container(
                height: 150.0,
                child: Card( 
                  shape: RoundedRectangleBorder( 
                      borderRadius: BorderRadius.circular(20),
                    ),
                  child: Padding(
                    padding: const EdgeInsets.only( 
                      top: 30.0,
                    ),
                    child: ListTile( 
                      leading: Icon(Icons.person,
                      color: Colors.green,
                      size: 35.0,
                      ),
                      title: Text('Rest and Take Care',
                      style: TextStyle( 
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                       ),
                      ),
                      subtitle:Text('Eat well, drink fluids and get plenty of rest.',
                      style: TextStyle(
                            fontSize: 15.0,
                       ),
                      ),
                    ),
                  ),
                ),
            ),

            //sixth card
             Container(
                height: 150.0,
                child: Card( 
                  shape: RoundedRectangleBorder( 
                      borderRadius: BorderRadius.circular(20),
                    ),
                  child: Padding(
                    padding: const EdgeInsets.only( 
                      top: 30.0,
                    ),
                    child: ListTile( 
                      leading: Icon(Icons.star,
                      color: Colors.blue,
                      size: 35.0,
                      ),
                      title: Text('Cleaning and Disinfecting the Surface',
                      style: TextStyle( 
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                       ),
                      ),
                      subtitle:Text('Commonly used surface should be regularly cleaned and disinfected.',
                      style: TextStyle(
                            fontSize: 15.0,
                     ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
