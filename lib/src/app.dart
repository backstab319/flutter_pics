import 'package:flutter/material.dart';

class App extends StatefulWidget {
  AppState createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;
  build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello there!'),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Text(
            'Welcome to my first flutter app. You clicked the button $counter times',
            style: TextStyle(color: Colors.white),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.white,
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
          icon: Icon(
            Icons.add,
            color: Colors.black,
          ),
          label: Text(
            "Click me",
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
