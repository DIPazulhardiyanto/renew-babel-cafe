import 'package:flutter/material.dart';

class BaseAppBar extends SliverAppBar {
  static const double height = 150.0;

  BaseAppBar(String title) : super(
    backgroundColor: Colors.black.withOpacity(0.5),
    pinned: true,
    expandedHeight: height,
    flexibleSpace: FlexibleSpaceBar(
      title: Text(title,
        style: TextStyle(
          color: textDrawer,
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          letterSpacing: 1,
        ),
      ),
      background: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('./lib/assets/img/logo.jpeg'),
                fit: BoxFit.cover)
        ),
        child: Stack(children: <Widget>[
          Container(
            height: 200.0,
            width: 380.0,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.black.withOpacity(0.1), Colors.black],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
        ],),
      ),
    ),
  );
}


var textDrawer = Colors.yellow[900];