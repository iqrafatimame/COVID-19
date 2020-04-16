import 'package:flutter/material.dart';
//import 'package:flutter/src/animation/animation_controller.dart';
import './home_page.dart' as first;
import './guides_page.dart' as Guides;

void main(){
  runApp(MaterialApp( 
    home: MyTabs(),
  ));
}
class MyTabs extends StatefulWidget { 
  @override 
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin { 

  //tab view controller 
  TabController controller;
  @override 
  void initState() { 
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override 
  void dispose() { 
    controller.dispose();
    super.dispose();
  }

  @override 
  Widget build(BuildContext context){ 
    return new Scaffold( 
      appBar: new AppBar( 
         title: new Text("COVID'19"),
         backgroundColor: Colors.green,
        bottom: new TabBar( 
          controller: controller,
            tabs: <Tab>[ 
              new Tab( 
                icon: new Icon(Icons.home),
              ),
               new Tab( 
                icon: new Icon(Icons.grid_on),
              ),
               new Tab( 
                icon: new Icon(Icons.help),
              ),
            ],
         ),
      ),
        body: new TabBarView( 
          controller: controller,
          children: <Widget>[ 
              new first.First(),
              new Guides.Guides(),
              new first.First(),
          ],
        ),
    );
  }
}
