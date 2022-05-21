import 'package:flutter/material.dart';
import 'package:foodstagram/model/post.dart';

class PostCard extends StatelessWidget {
  final Post post;
  final VoidCallback delete;
  final VoidCallback increament;
  PostCard(
      {required this.post, required this.delete, required this.increament});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              post.text,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(post.date,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    )),
                const Spacer(),
                TextButton.icon(
                  onPressed: increament,
                  icon: Icon(
                    Icons.thumb_up,
                    size: 14.0,
                    color: Colors.green,
                  ),
                  label: Text(post.likes.toString(),
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      )),
                ),
                const SizedBox(width: 8),
                const Icon(
                  Icons.comment,
                  size: 14.0,
                  color: Colors.blue,
                ),
                Text(post.comments.toString(),
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    )),
                const SizedBox(width: 8),
                IconButton(
                  iconSize: 14,
                  onPressed: delete,
                  icon: const Icon(
                    Icons.delete,
                    size: 14,
                    color: Colors.red,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
