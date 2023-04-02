class CommentModel {
  int? postId;
  String? name,email;

  CommentModel({this.postId, this.email, this.name});

  CommentModel factory(Map m1) {
    postId = m1['postId'];
    email = m1['email'];
    name = m1['name'];

    CommentModel commentModel = CommentModel(email: email, postId: postId, name: name);

    return commentModel;
  }
}
