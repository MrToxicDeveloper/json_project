class AlbumModel {
  int? id;
  String? title;

  AlbumModel({this.id, this.title});

  AlbumModel factory(Map m1) {
    id = m1['id'];
    title = m1['title'];

    AlbumModel albumModel = AlbumModel(id: id, title: title);

    return albumModel;
  }
}
