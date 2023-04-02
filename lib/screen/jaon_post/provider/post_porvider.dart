import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_project/screen/jaon_post/model/post_model.dart';

class PostProvider extends ChangeNotifier {

  List<dynamic> postList = [];

  Future<void> jsonParsing() async {
    String jsonData = await rootBundle.loadString("assets/json/post.json");
    var json = jsonDecode(jsonData);

    List<dynamic> postModelList = json.map((e) => PostModel().factory(e))
        .toList();
    postList = postModelList;
    notifyListeners();
  }
}