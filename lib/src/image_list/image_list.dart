import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> imageList;

  ImageList(this.imageList);

  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: imageList.length,
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              children: [
                Row(
                  children: [Image.network(imageList[index].url)],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                Row(
                  children: [
                    Text(
                      '${imageList[index].title}',
                      textAlign: TextAlign.center,
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                )
              ],
            ),
          );
        });
  }
}
