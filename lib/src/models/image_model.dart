import 'dart:convert';

class Image {
  int id;
  int albumId;
  String title;
  String url;
  String thumbnailUrl;

  // Default constructor
  Image({String title, String url, String thumbnailUrl, int id, int albumId});

  // Parsing from parsed json
  Image.fromParsedJson({Map<String, dynamic> parsedJson}) {
    id = parsedJson['id'];
    albumId = parsedJson['albumId'];
    title = parsedJson['title'];
    url = parsedJson['url'];
    thumbnailUrl = parsedJson['thumbnailUrl'];
  }

  // Parsing from unparsed json
  Image.fromRawJson(dynamic rawJson) {
    Map<String, dynamic> parsedJson = jsonDecode(rawJson);
    Image.fromParsedJson(parsedJson: parsedJson);
  }
}
