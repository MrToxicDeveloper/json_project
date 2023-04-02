import 'package:flutter/material.dart';
import 'package:json_project/screen/json_photo/provider/photo_provider.dart';
import 'package:provider/provider.dart';

class PhotoView extends StatefulWidget {
  const PhotoView({Key? key}) : super(key: key);

  @override
  State<PhotoView> createState() => _PhotoViewState();
}

class _PhotoViewState extends State<PhotoView> {
  PhotoProvider? proTrue, proFalse;

  @override
  void initState() {
    super.initState();
    Provider.of<PhotoProvider>(context,listen: false).jsonParsing();
  }

  @override
  Widget build(BuildContext context) {
    proTrue = Provider.of<PhotoProvider>(context, listen: true);
    proFalse = Provider.of<PhotoProvider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Photo"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: proTrue!.photoList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  shape: OutlineInputBorder(),
                  leading: Text("${proTrue!.photoList[index].id}"),
                  title: Text("${proTrue!.photoList[index].title}"),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
