import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../model/photo_model.dart';

class PhotoProvider extends ChangeNotifier {
  List<dynamic> photoList = [];

  Future<void> jsonParsing() async {
    String jsonData = await rootBundle.loadString("assets/json/photo.json");
    var json = jsonDecode(jsonData);

    List<dynamic> photoModelList =
    json.map((e) => PhotoModel().factory(e)).toList();
    photoList = photoModelList;
    notifyListeners();
  }
}
