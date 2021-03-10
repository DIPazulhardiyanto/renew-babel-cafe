import 'package:flutter/material.dart';

class EventsPage extends StatelessWidget {
  static const String routeName = '/events';
  EventsPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Events"),
        ),
        body: Center(child: Text("Events")),
    );
  }
}
