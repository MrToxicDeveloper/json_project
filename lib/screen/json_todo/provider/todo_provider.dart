import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../model/todo_model.dart';

class TodoProvider extends ChangeNotifier {
  List<dynamic> todoList = [];

  Future<void> jsonParsing() async {
    String jsonData = await rootBundle.loadString("assets/json/todo.json");
    var json = jsonDecode(jsonData);

    List<dynamic> todoModelList =
    json.map((e) => TodoModel().factory(e)).toList();
    todoList = todoModelList;
    notifyListeners();
  }
}
