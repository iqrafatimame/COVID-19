import 'package:flutter/material.dart';
import './home_page.dart' as first;
import './guides_page.dart' as Guides;
import './developer.dart' as Developer;
import './pakistan.dart' as Pakistan;

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
    controller = new TabController(length: 4, vsync: this);
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
         title: new Text("COVID-19"),
         backgroundColor: Colors.green,
        bottom: new TabBar( 
          controller: controller,
            tabs: <Tab>[ 
              new Tab( 
                icon: new Icon(Icons.all_out),
                text: 'Globe',
              ),
              new Tab( 
                icon: new Icon(Icons.star),
                text: 'Pakistan',
              ),
               new Tab( 
                icon: new Icon(Icons.grid_on),
                text: 'Guides',
              ),
              new Tab( 
                icon: new Icon(Icons.person),
                text: 'Developer',
              ), 
            ],
         ),
      ),
        body: new TabBarView( 
          controller: controller,
          children: <Widget>[ 
              new first.First(),
              new Pakistan.Pakistan(),
              new Guides.Guides(),
              new Developer.Developer(),
          ],
       ),
    );
  }
}