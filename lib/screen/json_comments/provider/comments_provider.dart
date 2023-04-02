import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_project/screen/json_comments/model/comment_model.dart';

class CommentProvider extends ChangeNotifier {
  List<dynamic> commentList = [];

  Future<void> jsonParsing() async {
    String jsonData = await rootBundle.loadString("assets/json/comments.json");
    var json = jsonDecode(jsonData);

    List<dynamic> commentModelList =
        json.map((e) => CommentModel().factory(e)).toList();
    commentList = commentModelList;
    notifyListeners();
  }
}
