import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Home extends StatelessWidget {
  final int count;
  final String heading;
  final Color color;
  Home({this.count,this.heading,this.color});
  final formater = NumberFormat("###,###");
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
                  height: 80.0,
                  child: Center(
                    child: Row( 
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[ 
                          Text('$heading',
                          style: TextStyle( 
                              fontSize: 20.0,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.bold,
                              color:Colors.black54,
                            ),
                          ),
                          Text('${formater.format(count)}',
                          style: TextStyle( 
                                color: color,
                                fontFamily: 'Lato',
                                fontSize: 35.0,
                                fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]
                    ),
                  ),
           ),
       );
    }
}
