import 'package:flutter/material.dart';
import 'package:json_project/screen/home/view/home_view.dart';
import 'package:json_project/screen/jaon_post/provider/post_porvider.dart';
import 'package:json_project/screen/jaon_post/view/json%20post.dart';
import 'package:json_project/screen/json_album/provider/album_provider.dart';
import 'package:json_project/screen/json_album/view/album_view.dart';
import 'package:json_project/screen/json_comments/provider/comments_provider.dart';
import 'package:json_project/screen/json_comments/view/comments_view.dart';
import 'package:json_project/screen/json_photo/view/photo_view.dart';
import 'package:json_project/screen/json_todo/provider/todo_provider.dart';
import 'package:json_project/screen/json_todo/view/todo_view.dart';
import 'package:provider/provider.dart';

import 'screen/json_photo/provider/photo_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PostProvider(),),
        ChangeNotifierProvider(create: (context) => CommentProvider(),),
        ChangeNotifierProvider(create: (context) => AlbumProvider(),),
        ChangeNotifierProvider(create: (context) => PhotoProvider(),),
        ChangeNotifierProvider(create: (context) => TodoProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => HomeView(),
          'post': (context) => JsonPost(),
          'album': (context) => AlbumView(),
          'comments': (context) => CommentsView(),
          'photo': (context) => PhotoView(),
          'todo': (context) => TodoView(),
        },
      ),
    ),
  );
}
