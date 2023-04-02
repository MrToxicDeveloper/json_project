class PostModel {
  int? userId, id;
  String? title;

  PostModel({this.userId, this.id, this.title});

  PostModel factory(Map m1) {
    userId = m1['userId'];
    id = m1['id'];
    title = m1['title'];

    PostModel postModel = PostModel(id: id, userId: userId, title: title);

    return postModel;
  }
}
