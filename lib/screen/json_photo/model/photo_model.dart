class PhotoModel {
  int? id;
  String? title;

  PhotoModel({this.id, this.title});

  PhotoModel factory(Map m1) {
    id = m1['id'];
    title = m1['title'];

    PhotoModel photoModel = PhotoModel(id: id, title: title);

    return photoModel;
  }
}
