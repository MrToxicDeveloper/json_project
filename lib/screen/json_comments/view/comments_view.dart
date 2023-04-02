import 'package:flutter/material.dart';
import 'package:json_project/screen/json_comments/provider/comments_provider.dart';
import 'package:provider/provider.dart';

class CommentsView extends StatefulWidget {
  const CommentsView({Key? key}) : super(key: key);

  @override
  State<CommentsView> createState() => _CommentsViewState();
}

class _CommentsViewState extends State<CommentsView> {
  CommentProvider? proTrue, proFalse;

  @override
  void initState() {
    super.initState();
    Provider.of<CommentProvider>(context,listen: false).jsonParsing();
  }

  @override
  Widget build(BuildContext context) {
    proTrue = Provider.of<CommentProvider>(context, listen: true);
    proFalse = Provider.of<CommentProvider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Comments"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: proTrue!.commentList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  shape: OutlineInputBorder(),
                  leading: Text("${proTrue!.commentList[index].postId}"),
                  title: Text("${proTrue!.commentList[index].name}"),
                  subtitle: Text("${proTrue!.commentList[index].email}"),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
