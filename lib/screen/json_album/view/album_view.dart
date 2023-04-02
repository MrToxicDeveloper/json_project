import 'package:flutter/material.dart';
import 'package:json_project/screen/json_album/provider/album_provider.dart';
import 'package:provider/provider.dart';

class AlbumView extends StatefulWidget {
  const AlbumView({Key? key}) : super(key: key);

  @override
  State<AlbumView> createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  AlbumProvider? proTrue, proFalse;

  @override
  void initState() {
    super.initState();
    Provider.of<AlbumProvider>(context,listen: false).jsonParsing();
  }

  @override
  Widget build(BuildContext context) {
    proTrue = Provider.of<AlbumProvider>(context, listen: true);
    proFalse = Provider.of<AlbumProvider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Album"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: proTrue!.albumList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  shape: OutlineInputBorder(),
                  leading: Text("${proTrue!.albumList[index].id}"),
                  title: Text("${proTrue!.albumList[index].title}"),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
