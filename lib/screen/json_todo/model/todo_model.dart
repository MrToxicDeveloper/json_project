class TodoModel {
  int? id;
  String? title;

  TodoModel({this.id, this.title});

  TodoModel factory(Map m1) {
    id = m1['id'];
    title = m1['title'];

    TodoModel todoModel = TodoModel(id: id, title: title);

    return todoModel;
  }
}
