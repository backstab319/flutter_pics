import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import './models/image_model.dart';

class App extends StatefulWidget {
  AppState createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;

  void fetchImage() async {
    counter += 1;
    var jsonResponse =
        await get(Uri.https('jsonplaceholder.typicode.com', 'photos/$counter'));
    ImageModel newImage = ImageModel.fromRawJson(jsonResponse.body);
    print(newImage);
  }

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
          onPressed: fetchImage,
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
