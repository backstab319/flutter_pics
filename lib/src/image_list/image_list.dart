import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> imageList;

  ImageList(this.imageList);

  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: imageList.length,
        itemBuilder: (context, index) {
          return createImage(imageList[index]);
        });
  }

  Widget createImage(ImageModel image) {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(20.00),
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.grey,
      )),
      child: Column(
        children: [
          Image.network(image.url),
          Padding(
            child: Text(image.title),
            padding: EdgeInsets.only(top: 12.0),
          ),
        ],
      ),
    );
  }
}
