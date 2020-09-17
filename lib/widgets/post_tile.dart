import 'package:flutter/material.dart';
import 'package:fluttershare/pages/post_screen.dart';
import 'package:fluttershare/widgets/custom_image.dart';
import 'package:fluttershare/widgets/post.dart';

class PostTile extends StatelessWidget {
  final Post post;
  PostTile(this.post);
  showPost(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PostScreen(
          postId: post.postId,
          userId: post.ownerId,
          mediaUrl: post.mediaUrl,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showPost(context),
      child:
          post.mediaUrl == null ? Center(child: Text(post.caption)) : cachedNetworkImage(post.mediaUrl),
    );
  }
}
