import 'package:flutter/material.dart';
import 'package:foodstagram/model/comment.dart';

class Post {
  String caption;
  DateTime date;
  String image;
  String restaurantName;
  int priceRating;
  int serviceRating;
  int tasteRating;
  int likes = 0;
  List<Comment> comments = [];
  int likeCount = 0;

  Post({
    this.caption = "",
    required this.date,
    required this.image,
    required this.restaurantName,
    required this.priceRating,
    required this.serviceRating,
    required this.tasteRating,
  });

  void newComment(Comment newComment) {
    comments.add(newComment);
  }
}
