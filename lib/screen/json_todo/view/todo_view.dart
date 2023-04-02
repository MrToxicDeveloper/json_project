import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/todo_provider.dart';

class TodoView extends StatefulWidget {
  const TodoView({Key? key}) : super(key: key);

  @override
  State<TodoView> createState() => _TodoViewState();
}

class _TodoViewState extends State<TodoView> {
  TodoProvider? proTrue, proFalse;

  @override
  void initState() {
    super.initState();
    Provider.of<TodoProvider>(context,listen: false).jsonParsing();
  }

  @override
  Widget build(BuildContext context) {
    proTrue = Provider.of<TodoProvider>(context, listen: true);
    proFalse = Provider.of<TodoProvider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Todo"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: proTrue!.todoList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  shape: OutlineInputBorder(),
                  leading: Text("${proTrue!.todoList[index].id}"),
                  title: Text("${proTrue!.todoList[index].title}"),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
