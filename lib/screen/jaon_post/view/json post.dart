import 'package:flutter/material.dart';
import 'package:json_project/screen/jaon_post/provider/post_porvider.dart';
import 'package:provider/provider.dart';

class JsonPost extends StatefulWidget {
  const JsonPost({Key? key}) : super(key: key);

  @override
  State<JsonPost> createState() => _JsonPostState();
}

class _JsonPostState extends State<JsonPost> {

  PostProvider? proTrue;
  PostProvider? proFalse;

  @override
  void initState() {
    super.initState();
    Provider.of<PostProvider>(context,listen: false).jsonParsing();
  }

  @override
  Widget build(BuildContext context) {
    proFalse = Provider.of<PostProvider>(context,listen: false);
    proTrue = Provider.of<PostProvider>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Post"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: proTrue!.postList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  shape: OutlineInputBorder(),
                  leading: Text("${proTrue!.postList[index].userId}"),
                  title: Text("${proTrue!.postList[index].id}"),
                  subtitle: Text("${proTrue!.postList[index].title}"),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
