import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import './models/image_model.dart';
import './image_list/image_list.dart';
import './keys/unsplash_client_id.dart';

class App extends StatefulWidget {
  AppState createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = [];

  final String clientId = UnsplashClientId().getClientId();

  void fetchImage() async {
    setState(() {
      counter += 1;
    });
    var jsonResponse = await get(Uri.https(
        'api.unsplash.com', 'photos/random/', {'client_id': clientId}));
    ImageModel newImage = ImageModel.fromRawJson(jsonResponse.body);
    images.add(newImage);
  }

  build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello there!'),
        ),
        body: ImageList(images),
        // Center(
        //   child: Text(
        //     'Welcome to my first flutter app. You clicked the button $counter times',
        //     style: TextStyle(color: Colors.white),
        //   ),
        // ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: fetchImage,
          icon: Icon(
            Icons.add,
          ),
          label: Text(
            "Click me",
          ),
        ),
      ),
    );
  }
}
