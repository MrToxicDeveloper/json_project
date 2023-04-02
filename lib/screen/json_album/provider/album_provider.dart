import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_project/screen/json_album/model/album_model.dart';

class AlbumProvider extends ChangeNotifier {
  List<dynamic> albumList = [];

  Future<void> jsonParsing() async {
    String jsonData = await rootBundle.loadString("assets/json/album.json");
    var json = jsonDecode(jsonData);

    List<dynamic> albumModelList =
    json.map((e) => AlbumModel().factory(e)).toList();
    albumList = albumModelList;
    notifyListeners();
  }
}
