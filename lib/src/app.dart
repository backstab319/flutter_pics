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
        title: Text(
          'Welcome',
        ),
        backgroundColor: Colors.black,
      ),
      body: Text('$counter'),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
          backgroundColor: Colors.black,
          child: Icon(Icons.add)),
    ));
  }
}
