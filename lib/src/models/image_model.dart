import 'dart:convert';

class ImageModel {
  int id;
  int albumId;
  String title;
  String url;
  String thumbnailUrl;

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
    this.albumId = parsedJson['albumId'];
    this.title = parsedJson['title'];
    this.url = parsedJson['url'];
    this.thumbnailUrl = parsedJson['thumbnailUrl'];
  }

  toString() {
    return "id: $id, albumId: $albumId, title: $title, url: $url, thumbnailUrl: $thumbnailUrl";
  }
}
