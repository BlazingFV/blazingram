import 'package:flutter/material.dart';
import 'package:fluttershare/pages/home.dart';
import 'package:fluttershare/widgets/header.dart';
import 'package:fluttershare/widgets/post.dart';
import 'package:fluttershare/widgets/progress.dart';

class PostScreen extends StatelessWidget {
  final String userId;
  final String postId;
  PostScreen({
    this.userId,
    this.postId,
  });
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: postRef
            .doc(userId)
            .collection('userPosts')
            .doc(postId)
            .get(),
        builder: (context,snapShot){
          if(!snapShot.hasData){
            return circularProgress();
          }
          Post post = Post.fromDocument(snapShot.data);
          return Center(
            child: Scaffold(
              appBar: header(context,titleText: post.caption),
              body: ListView(
                children: [
                  Container(
                    child:post,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
