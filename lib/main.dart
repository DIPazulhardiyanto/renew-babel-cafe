import 'package:flutter/material.dart';
import 'views/addMenu/addMenu.dart';
import 'views/home/home.dart';
import 'views/events/events.dart';
import 'routes/routes.dart';
import 'widgets/tabNavigation/tabsPage.dart';

void main() => runApp(bubbleCaffeApp());

class bubbleCaffeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue[300]),
      title: 'Caffe App',
      debugShowCheckedModeBanner: false,
      home: TabsPage(),
      routes: {
        Routes.home: (context) => HomePage(),
        Routes.addMenu: (context) => AddMenuPage(),
        Routes.events: (context) => EventsPage(), //PageExample
      },
    );
  }
}
