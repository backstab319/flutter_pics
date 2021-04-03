import 'package:flutter/material.dart';
import '../models/image_model.dart';
import 'package:http/http.dart' show get;

class ImageList extends StatelessWidget {
  final List<ImageModel> imageList;
  final Map<String, String> imageRequestHeader = {
    'Cache-Level': 'Bypass',
    'Always-Online': 'OFF',
    'Web-Application-Firewall': 'OFF',
    'Security-Level': 'nothing',
    'Browser-Integrity-Check': 'OFF'
  };

  ImageList(this.imageList);

  void getImageUrl(String url) async {
    print('$url image url');
    var imageUrl = await get(
        Uri.https(
            url.split('/')[2], "/${url.split('/')[3]}/${url.split('/')[4]}"),
        headers: imageRequestHeader);
    print(imageUrl);
  }

  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: imageList.length,
      itemBuilder: (context, index) {
        getImageUrl(imageList[index].url);
        return Image(
          image: NetworkImage(imageList[index].url, scale: 100),
        );
      },
    );
  }
}
