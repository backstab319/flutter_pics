import 'dart:convert';
import 'package:http/http.dart' show get;

class ImageModel {
  String id;
  String title;
  String url;

  // Default constructor
  ImageModel(
      {String title, String url, String thumbnailUrl, int id, int albumId});

  // Parsing from parsed json
  ImageModel.fromParsedJson({Map<String, dynamic> parsedJson}) {
    assignData(parsedJson: parsedJson);
  }

  // Parsing from unparsed json
  ImageModel.fromRawJson(dynamic rawJson) {
    Map<String, dynamic> parsedJson = jsonDecode(rawJson);
    assignData(parsedJson: parsedJson);
  }

  void assignData({Map<String, dynamic> parsedJson}) {
    this.id = parsedJson['id'];
    this.title = parsedJson['alt_description'];
    this.url = parsedJson['urls']['small'];
  }

  toString() {
    return "id: $id, title: $title, url: $url";
  }
}
